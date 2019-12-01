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
#include <device.h>


#ifdef DEBUG_LEVEL3
void debug_spi(const char* keyword, uint8_t data)
{
    DEBUG_MSG("%s:  %.3u  0x%.2X  %c%c%c%c %c%c%c%c\n",
        keyword,
        data,
        data,
        (data & 0x80 ? '1' : '0'),
        (data & 0x40 ? '1' : '0'),
        (data & 0x20 ? '1' : '0'),
        (data & 0x10 ? '1' : '0'),
        (data & 0x08 ? '1' : '0'),
        (data & 0x04 ? '1' : '0'),
        (data & 0x02 ? '1' : '0'),
        (data & 0x01 ? '1' : '0'));

}
#endif // DEBUG_LEVEL3


SPI::SPI ()
{
    this->p_data = new uint8_t[SPI_MAX];
    this->m_transfer = 0;
    this->m_channel = 0;
    this->m_counter = 0;
    int i = 0;

    for (i = 0; i < SPI_MAX; ++i) {
        this->p_data[i] = 0;
    }
}


SPI::~SPI()
{
//    this->p_data->clear();
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
    if (this->m_counter >= SPI_MAX)
        return;

    this->_on(channel);

    this->m_channel = channel;

    this->p_data[this->m_counter] = data;
    this->m_counter++;
}


void SPI::transfer(uint8_t channel, uint8_t data[], uint16_t size)
{
    if (size >= SPI_MAX)
        return;


    this->_on(channel);

    this->m_channel = channel;

    for (uint8_t i = 0; i < size; ++i) {
        this->p_data[this->m_counter] = data[i];
        this->m_counter++;
    }
}


uint8_t SPI::commit(bool debug_out, uint8_t* result, unsigned long wait_on, unsigned long wait_off)
{
    if (this->m_transfer == 0) {
        return 0;
    }

    uint8_t i = 0;
    uint8_t res = 0;
    uint8_t data = 0;

    for (i = 0; i < this->m_counter; ++i)
    {
        // get command from que
        data = this->p_data[i];

        res = this->p_spi->transfer(data);
        if (wait_on > 0) {
            delay(wait_on);
        }

        // reset command after use
        this->p_data[i] = 0;

#ifdef DEBUG_LEVEL3
        if (debug_out == true) {
            debug_spi("SPI", data);
        }
#endif // DEBUG_LEVEL3

        if (result == NULL) {
            continue;
        }

        result[i] = res;
    }

    this->_off(this->m_channel);

    if (wait_off > 0) {
        delay(wait_off);
    }

    this->m_channel = 0;
    this->m_transfer = 0;
    this->m_counter = 0;

    return i;
}
