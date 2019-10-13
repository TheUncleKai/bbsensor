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
    this->m_data = 0;
    this->m_transfer = 0;
    this->m_channel = 0;
}


SPI::~SPI()
{
}


SPIClass* SPI::spi()
{
    return this->p_spi;
}


void SPI::set_spi(SPIClass* spi)
{
    this->p_spi = spi;
}


void SPI::_on(int channel)
{
    digitalWrite(channel, LOW);
    this->m_transfer = 1;
}


void SPI::_off(int channel)
{
    digitalWrite(channel, HIGH);
    this->m_transfer = 0;
}


void SPI::transfer(int channel, char data)
{
    this->_on(channel);

    this->m_channel = channel;
    this->m_data = data;
}


void SPI::commit()
{
    if (this->m_transfer == 0) {
        return;
    }

    this->p_spi->transfer(this->m_data);
    this->_off(this->m_channel);

#ifdef SPI_DEBUG
//    DEBUG_MSG("SPI: %d\n", this->m_data);
    debug_binary("SPI", this->m_data);
#endif // SPI_DEBUG

    this->m_channel = 0;
    this->m_transfer = 0;
}
