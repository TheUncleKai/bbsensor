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


Temperature::Channel* channellist[TEMP_CHANNELS];


Temperature::Manager::Manager(SPIClass* spi, uint8_t cs)
{
    this->m_cs = cs;
    this->p_spi = new SPI();

    this->p_spi->set_spi(spi);

    int i = 0;

    for (i = 0; i < TEMP_CHANNELS; ++i) {
        channellist[i] = NULL;
    }

}


Temperature::Manager::~Manager()
{

    Channel* channel;

    int i = 0;

    for (i = 0; i < TEMP_CHANNELS; ++i) {
        channel = channellist[i];

        if (channel != NULL) {
            delete channel;
            channellist[i] = NULL;
        }
    }

    delete this->p_spi;
}


uint8_t Temperature::Manager::cs()
{
    return this->m_cs;
}


void Temperature::Manager::setup()
{
    DEBUG_MSG("TEMPERATURE: setup cs pin %d\n", this->m_cs);
    pinMode(this->m_cs, OUTPUT);
}


void Temperature::Manager::add_channel(uint8_t number, Temperature::Type type)
{
    if (type == Temperature::Type::NONE)
        return;

    if (number < TEMP_CHANNELS) {
        Temperature::Channel* channel = new Channel(number, type);

        if (channel != NULL) {
#ifdef DEBUG_LEVEL3
            DEBUG_MSG("TEMPERATURE: add channel %u, type %u\n", channel->channel(), channel->type());
#endif // DEBUG_LEVEL3
            channellist[number] = channel;
        }
    } else {
        DEBUG_MSG("TEMPERATURE: max number of channels reached!");
        return;
    }
}

void Temperature::Manager::_process_channel(Temperature::Channel* channel)
{

#ifdef DEBUG_LEVEL3
    if (channel->measure() == true) {
        DEBUG_MSG("TEMPERATURE: channel %u, measure!\n", channel->channel());
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

    command = (0x0018 ^ channel->channel()) << 14;

    this->p_spi->transfer(this->m_cs, (uint8_t)((0x00FF0000 & command) >> 16)); // set start
    this->p_spi->transfer(this->m_cs, (uint8_t)((0x0000FF00 & command) >> 8)); // set start
    this->p_spi->transfer(this->m_cs, (uint8_t)(0x000000FF & command)); // set start

    answer_size = this->p_spi->commit(false, data);

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

#ifdef DEBUG_LEVEL3
    DEBUG_MSG("TEMPERATURE: channel %u, measure %u\n", channel->channel(), value);
#endif // DEBUG_LEVEL3

    channel->add_value(value);
}


void Temperature::Manager::set_measure(bool all, uint8_t channel_number, bool measure)
{
    Channel* channel;
    int i = 0;

    if (channel_number >= TEMP_CHANNELS) {
        return;
    }

    for (i = 0; i < TEMP_CHANNELS; ++i) {
        channel = channellist[i];

        if (channel == NULL) {
            continue;
        }

        if (all == true) {
            channel->do_measure(true);
        } else {
            if (channel->channel() == channel_number) {
                channel->do_measure(measure);
            }
        }

#ifdef DEBUG_LEVEL3
        if (channel->measure() == true) {
            DEBUG_MSG("TEMPERATURE: channel %u, plan for measure!\n", channel->channel());
        }
#endif // DEBUG_LEVEL3
    }
}


Temperature::Channel* Temperature::Manager::get_channel(uint8_t channel_number)
{
    if (channel_number >= TEMP_CHANNELS) {
        return NULL;
    }

    return channellist[channel_number];
}


void Temperature::Manager::execute()
{
    Channel* channel;
    int i = 0;

    for (i = 0; i < TEMP_CHANNELS; ++i) {
        channel = channellist[i];

        if (channel == NULL) {
            continue;
        }

        if (channel->measure() == true) {
            this->_process_channel(channel);
        }
    }
}
