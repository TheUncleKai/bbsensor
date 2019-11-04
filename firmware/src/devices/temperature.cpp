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


void Temperature::execute()
{
    int n;
    ChannelList::iterator iter;
    SPIData::iterator data_iter;

    Channel* chan;
    SPIData data;

    uint8_t answer = 0;
    uint32_t command = 0;
    uint32_t c1, c2, c3;

    for (iter = this->p_channels->begin(); iter != this->p_channels->end(); ++iter)
    {
        ChannelValue* value = new ChannelValue;

        value->data = 0;
        value->voltage = 0.0;

        chan = (*iter);

        command = (0x0018 ^ chan->channel()) << 14;

        c1 = (0x00FF0000 & command) >> 16;
        c2 = (0x0000FF00 & command) >> 8;
        c3 =  0x000000FF & command;

        this->p_spi->transfer(this->m_cs, (uint8_t)c1); // set start
        this->p_spi->transfer(this->m_cs, (uint8_t)c2); // set start
        this->p_spi->transfer(this->m_cs, (uint8_t)c3); // set start

        this->p_spi->commit(true, &data);

        if (data.size() != 3)
            return;

        n = 0;
        for (data_iter = data.begin(); data_iter != data.end(); ++data_iter) {
            answer = (*data_iter);

            if (n == 1) {
                value->data = value->data ^ ((answer & 0x0F) << 8);
            }

            if (n == 2) {
                value->data = value->data ^ answer;
            }

            n++;
        }

        chan->data()->push_back(value);
        data.clear();
    }
}
