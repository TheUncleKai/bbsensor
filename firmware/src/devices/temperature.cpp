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
#include <debug.h>

#include <temperature.h>

Temperature::Temperature(EEPROMClass* eeprom, SPIClass* spi, int cs)
{
    this->m_cs = cs;
    this->p_spi = new SPI();

    this->p_eeprom = eeprom;
    this->p_channels = new ChannelList;

    this->p_spi->set_spi(spi);
}


Temperature::~Temperature()
{

    ChannelList::iterator iter;
    Channel* temp;

    for (iter = this->p_channels->begin(); iter != this->p_channels->end(); ++iter)
    {
        temp = (*iter);
        delete temp;
    }

    this->p_channels->clear();

    delete this->p_channels;
    delete this->p_spi;
}


int Temperature::cs()
{
    return this->m_cs;
}


ChannelList* Temperature::channel()
{
    return this->p_channels;
}


void Temperature::setup()
{
    DEBUG_MSG("TEMPERATURE: setup cs pin %d\n", this->m_cs);
    pinMode(this->m_cs, OUTPUT);

    Channel* temp = NULL;

    for (int i=0; i <= TEMP_CHANNELS; i++) {

        temp = new Channel(i+1, i, 2);

        if (temp != NULL) {
#ifdef DEBUG_TEMPERATURE
            DEBUG_MSG("TEMPERATURE: add channel %d, input %d, type %d\n",
                      i, temp->number(), temp->type());
#endif // DEBUG_TEMPERATURE
            this->p_channels->push_back(temp);
        }
    }
}


void Temperature::_process_channel(Channel* channel)
{
    int n;
    SPIData data;
    ChannelValue* value = new ChannelValue;
    SPIData::iterator iter;

    uint8_t answer = 0;
    uint32_t command = 0;

    value->data = 0;
    value->voltage = 0.0;

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

    this->p_spi->commit(true, &data);

    if (data.size() != 3)
        return;

    n = 0;
    for (iter = data.begin(); iter != data.end(); ++iter) {
        answer = (*iter);

        if (n == 1) {
            value->data = value->data ^ ((answer & 0x0F) << 8);
        }

        if (n == 2) {
            value->data = value->data ^ answer;
        }

        n++;
    }

    channel->data()->push_back(value);
    data.clear();

}


void Temperature::execute()
{
    ChannelList::iterator iter;
    Channel* channel = NULL;

    for (iter = this->p_channels->begin(); iter != this->p_channels->end(); ++iter)
    {
        channel = (*iter);
        this->_process_channel(channel);
    }
}
