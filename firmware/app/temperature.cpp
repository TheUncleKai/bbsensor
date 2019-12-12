/*
   Copyright (C) 2019, Kai Raphahn

   Licensed under the Apache License, Version 2.0 (the "License");
   you may not use this file except in compliance with the License.
   You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

   Unless required by applicable law or agreed to in writing, software
   distributed under the License is distributed on an "AS IS" BASIS,
   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
   See the License for the specific language governing permissions and
   limitations under the License.
*/

#include <Arduino.h>

#include <settings.h>
#include <temperature.h>
#include <tables.h>


uint16_t DATAList[TEMP_CHANNELS][TEMP_ARRAY];


Temperature::Channel channellist[TEMP_CHANNELS];


const char* Temperature::TEMPERATURE_Type[] = {
    "NONE",
    "DATA",
    "VOLTAGE",
    "RTD",
    "PTC10",
    "PTC100"
};


Temperature::Manager::Manager(SPIClass* spi, uint8_t cs) : Device(spi, cs)
{
    this->p_current = NULL;
    this->m_active = false;

    int i = 0;
    Temperature::Channel* channel = NULL;

    for (i = 0; i < TEMP_CHANNELS; ++i) {
        channel = &channellist[i];
        channel->full = false;
        channel->measure = false;
        channel->head = 0;
        channel->tail = 0;
        channel->num = i;
        channel->type = Temperature::Type::NONE;
        channel->data = 0;
        channel->value = 0.0;
    }

}


Temperature::Manager::~Manager()
{
}


void Temperature::Manager::setup()
{
}


void Temperature::Manager::add_channel(uint8_t number, Temperature::Type type)
{
    if (number >= TEMP_CHANNELS)
        return;

    if (type == Temperature::Type::NONE)
        return;


    Temperature::Channel* channel = this->get_channel(number);
    channel->type = type;


#ifdef DEBUG_LEVEL3
    DEBUG_MSG("TEMPERATURE: add channel %u, type %s\n", channel->num, TEMPERATURE_Type[channel->type]);
#endif // DEBUG_LEVEL3
}

void Temperature::Manager::_process_channel(Temperature::Channel* channel)
{

#ifdef DEBUG_LEVEL3
    if (channel->measure() == true) {
        DEBUG_MSG("TEMPERATURE: channel %u, measure!\n", channel->num);
    }
#endif // DEBUG_LEVEL3

    uint8_t n;
    uint16_t value = 0;

    uint8_t* data = new uint8_t[3];
    uint8_t answer_size = 0;

    uint8_t answer = 0;
    uint32_t command = 0;

    //  first 8 bits      second 8 bits      third 8 bits
    //  X X X X X 1 S D2  D1 D0 X X X X X X  X X X X X X X X
    //  1 = Start Bit
    //  S = 1: single ended / 0: differential

    //  Channel selection
    //  D2 D1 D0  Channel
    //  0  0  0   CH0
    //  0  0  1   CH1
    //  0  1  0   CH2
    //  0  1  1   CH3
    //  1  0  0   CH4
    //  1  0  1   CH5
    //  1  1  0   CH6
    //  1  1  1   CH7

    // Result Bits
    // first 8 bits     second 8 bits          third 8 bits
    // X X X X X X X X  X X X 0 B11 B10 B9 B8  B7 B6 B5 B4 B3 B2 B1 B0

    command = (0x0018 ^ channel->num) << 14;

    this->spi()->transfer((uint8_t)((0x00FF0000 & command) >> 16)); // set start
    this->spi()->transfer((uint8_t)((0x0000FF00 & command) >> 8)); // set start
    this->spi()->transfer((uint8_t)(0x000000FF & command)); // set start

    answer_size = this->spi()->commit(false, data);

    if (answer_size != 3)
        return;

    for (n = 0; n < 3; ++n) {
        answer = data[n];

        if (n == 1) {
            value = value ^ ((answer & 0x0F) << 8);
        }

        if (n == 2) {
            value = value ^ answer;
        }
    }

    delete data;

    if (value > TEMP_LIMIT)
        return;

    DATAList[channel->num][channel->head] = value;


    if (channel->full == true) {
        channel->tail = (channel->tail + 1) % TEMP_ARRAY;
    }

    channel->head = (channel->head + 1) % TEMP_ARRAY;
    channel->full = channel->head == channel->tail;
    channel->data = value;

    if (channel->type == Type::VOLTAGE) {
        channel->value = table_voltages[value];
    }

#ifdef DEBUG_LEVEL1
    DEBUG_MSG("%u\t%u\t%u\t%5.3f\n", channel->num, channel->head, channel->data, channel->value);
#endif // DEBUG_LEVEL1
}


void Temperature::Manager::set_measure(bool all)
{
    Temperature::Channel* channel;
    int i = 0;


    for (i = 0; i < TEMP_CHANNELS; ++i) {
        channel = &channellist[i];

        if (channel == NULL) {
            continue;
        }

        channel->measure = true;
        this->m_active = true;
    }
}


bool Temperature::Manager::get_measure()
{
    return this->m_active;
}


Temperature::Channel* Temperature::Manager::get_channel(uint8_t channel_number)
{
    if (channel_number >= TEMP_CHANNELS) {
        return NULL;
    }
    Temperature::Channel* channel = NULL;


    channel = &channellist[channel_number];

    if (channel != NULL)
        this->p_current = channel;

    return channel;
}


Temperature::Channel* Temperature::Manager::current()
{
    Temperature::Channel* channel = NULL;

    if (this->p_current == NULL) {

        for (int i = 0; i < TEMP_CHANNELS; ++i) {
            channel = &channellist[i];

            if (channel != NULL) {
                this->p_current = channel;
                break;
            }
        }
    }

    return this->p_current;
}


void Temperature::Manager::next()
{
    Temperature::Channel* channel = NULL;
    int counter = 0;
    int i = 0;

    if (this->p_current != NULL)
        counter = this->p_current->num;


    while(i < TEMP_CHANNELS) {
        ++counter;

        if (counter >= TEMP_CHANNELS)
            counter = 0;

        channel = &channellist[counter];
        if (channel != NULL) {
            this->p_current = channel;
            break;
        }

        ++i;
    }
}


void Temperature::Manager::prev()
{
    Temperature::Channel* channel = NULL;
    int counter = 0;
    int i = 0;

    if (this->p_current != NULL)
        counter = this->p_current->num;


    while(i < TEMP_CHANNELS) {
        if (counter == 0) {
            counter = TEMP_CHANNELS - 1;
        } else {
            --counter;
        }

        channel = &channellist[counter];
        if (channel != NULL) {
            this->p_current = channel;
            break;
        }

        ++i;
    }
}


void Temperature::Manager::execute()
{
    Temperature::Channel* channel;
    int i = 0;

    for (i = 0; i < TEMP_CHANNELS; ++i) {
        channel = &channellist[i];

        if (channel == NULL) {
            continue;
        }

        if (channel->measure == true) {
            this->_process_channel(channel);
        }
    }
}
