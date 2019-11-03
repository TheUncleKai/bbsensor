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
    this->p_spi = spi;
    this->p_eeprom = eeprom;
    this->p_channels = new ChannelList;
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

        temp = new Channel(this->p_spi, i+1, i, 2);

        if (temp != NULL) {
#ifdef DEBUG_TEMPERATURE
            DEBUG_MSG("TEMPERATURE: add channel %d, input %d, type %d\n",
                      temp->channel(),
                      temp->number(),
                      temp->type());
#endif // DEBUG_TEMPERATURE
            this->p_channels->push_back(temp);
        }
    }
}


void Temperature::execute()
{
}
