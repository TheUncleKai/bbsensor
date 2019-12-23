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

#include <device.h>



Device::Device()
{
    this->p_spi = NULL;
    this->m_num = 0;
    this->m_pin = 0;
}


Device::Device(SPIClass* spi, uint8_t cs)
{
    this->p_spi = new SPIWrapper(cs);
    this->p_spi->set_spi(spi);

    this->m_num = 0;
    this->m_pin = 0;
}


Device::Device(uint8_t num, uint8_t pin)
{
    this->p_spi = NULL;
    this->m_num = num;
    this->m_pin = pin;
}


Device::~Device()
{
    if (this->p_spi != NULL) {
        delete this->p_spi;
    }
}


void Device::setup()
{
}


void Device::execute()
{
}


SPIWrapper* Device::spi()
{
    return this->p_spi;
}


uint8_t Device::pin()
{
    return this->m_pin;
}


uint8_t Device::number()
{
    return this->m_num;
}
