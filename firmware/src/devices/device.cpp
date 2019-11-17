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

#include <device.h>
#include <utils.h>

SPI::SPI ()
{
    this->p_data = new SPIData;
    this->m_transfer = 0;
    this->m_channel = 0;
}


SPI::~SPI()
{
    this->p_data->clear();
    delete this->p_data;
}


SPIClass* SPI::spi()
{
    return this->p_spi;
}


void SPI::set_spi(SPIClass* spi)
{
    this->p_spi = spi;
}


void SPI::_on(uint8_t channel)
{
    digitalWrite(channel, LOW);
    this->m_transfer = 1;
}


void SPI::_off(uint8_t channel)
{
    digitalWrite(channel, HIGH);
    this->m_transfer = 0;
}


void SPI::transfer(uint8_t channel, uint8_t data)
{
    this->_on(channel);

    this->m_channel = channel;

    this->p_data->push_back(data);
}


void SPI::transfer(uint8_t channel, uint8_t data[], uint16_t size)
{
    this->_on(channel);

    this->m_channel = channel;

    for (uint8_t i = 0; i < size; ++i) {
        this->p_data->push_back(data[i]);
    }
}


void SPI::commit(bool debug_out, SPIData* result, unsigned long wait_on, unsigned long wait_off)
{
    if (this->m_transfer == 0) {
        return;
    }

    SPIData::iterator iter;
    uint8_t data;
    uint8_t res = 0;

    for (iter = this->p_data->begin(); iter != this->p_data->end(); ++iter)
    {
        data = (*iter);

        res = this->p_spi->transfer(data);
        if (wait_on > 0) {
            delay(wait_on);
        }

        if (result != NULL) {
            result->push_back(res);
        }

#ifdef DEBUG_SPI
        if (debug_out == true) {
            debug_binary("SPI", data);
        }
#endif // DEBUG_SPI
    }

    this->_off(this->m_channel);
    if (wait_off > 0) {
        delay(wait_off);
    }

    this->m_channel = 0;
    this->m_transfer = 0;
    this->p_data->clear(); // clear data after writing
}
