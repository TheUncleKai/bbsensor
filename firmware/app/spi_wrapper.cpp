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
#include <spi_wrapper.h>
#include <utils.h>

SPIWrapper::SPIWrapper (uint8_t chipselect)
{
    this->p_data = new uint8_t[SPI_LIMIT];
    this->m_transfer = 0;
    this->m_chipselect = chipselect;
    this->m_counter = 0;
    int i = 0;

    for (i = 0; i < SPI_LIMIT; ++i) {
        this->p_data[i] = 0;
    }
}


SPIWrapper::~SPIWrapper()
{
//    this->p_data->clear();
    delete this->p_data;
}


SPIClass* SPIWrapper::spi()
{
    return this->p_spi;
}


uint8_t SPIWrapper::chipselect()
{
    return this->m_chipselect;
}


void SPIWrapper::on()
{
    digitalWrite(this->m_chipselect, LOW);
    this->m_transfer = 1;
}


void SPIWrapper::off()
{
    digitalWrite(this->m_chipselect, HIGH);
    this->m_transfer = 0;
}


void SPIWrapper::set_spi(SPIClass* spi)
{
    this->p_spi = spi;

#ifdef DEBUG_LEVEL1
    DEBUG_MSG("SPI: setup cs pin %d\n",
                this->m_chipselect);
#endif // DEBUG_LEVEL1
    pinMode(this->m_chipselect, OUTPUT);
}


void SPIWrapper::transfer(uint8_t data)
{
    this->on();
    this->p_data[this->m_counter] = data;
    this->m_counter++;
}


void SPIWrapper::transfer(uint8_t data[], uint16_t size)
{
    this->on();

    if (size > SPI_LIMIT)
        return;

    for (uint8_t i = 0; i < size; ++i) {
        this->p_data[this->m_counter] = data[i];
        this->m_counter++;
    }
}


uint8_t SPIWrapper::commit(bool debug_out, uint8_t* result, unsigned long wait_on, unsigned long wait_off)
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
            debug_binary("SPI", data);
        }
#endif // DEBUG_LEVEL3

        if (result == NULL) {
            continue;
        }

        result[i] = res;
    }

    this->off();

    if (wait_off > 0) {
        delay(wait_off);
    }

    this->m_transfer = 0;
    this->m_counter = 0;

    return i;
}
