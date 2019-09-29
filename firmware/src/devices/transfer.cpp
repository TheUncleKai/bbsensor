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

#include <transfer.h>


Transfer::Transfer ()
{
    this->p_spi = new SPIClass();

    this->m_cs1 = PIN_CS1;
    this->m_cs2 = PIN_CS2;
    this->m_data = 0;
    this->m_transfer = 0;
    this->m_channel = 0;
}


Transfer::~Transfer()
{
    delete this->p_spi;
}


SPIClass* Transfer::spi()
{
    return this->p_spi;
}


int Transfer::_on(int channel)
{
    if (channel == 1) {
        digitalWrite(this->m_cs1, HIGH);
        return 0;
    }
    if (channel == 2) {
        digitalWrite(this->m_cs2, HIGH);
        return 0;
    }
    return 1;
}


int Transfer::_off(int channel)
{
    if (channel == 1) {
        digitalWrite(this->m_cs1, LOW);
        return 0;
    }
    if (channel == 2) {
        digitalWrite(this->m_cs2, LOW);
        return 0;
    }
    return 1;
}


void Transfer::transfer(int channel, int data)
{
    this->m_data = 0;

    if (this->_on(channel) == 1) {
        this->m_transfer = 0;
        return;
    }

    this->m_channel = channel;
    this->m_transfer = 1;
    this->m_data = data;
}


void Transfer::commit()
{
    char buff [1];
    if (this->m_transfer == 0) {
        return;
    }
    buff[0] = this->m_data;
    this->p_spi->transfer(buff[0]);

    if (this->_off(this->m_channel) == 0) {
        this->m_transfer = 0;
        DEBUG_MSG("SPI: Transfer\n");
    }
    this->m_channel = 0;
    this->m_transfer = 0;
}


void Transfer::setup()
{
    DEBUG_MSG("SPI: SCLK %d, MISO %d, MOSI %d\n",
                PIN_SCLK,
                PIN_MISO,
                PIN_MOSI);
    DEBUG_MSG("SPI: CS1 %d\n",
                this->m_cs1);
    DEBUG_MSG("SPI: CS2 %d\n",
                this->m_cs2);

    pinMode(this->m_cs1, OUTPUT);
    pinMode(this->m_cs2, OUTPUT);
    this->p_spi->pins(PIN_SCLK, PIN_MISO, PIN_MOSI, PIN_NONE);
    this->p_spi->begin();
}


void Transfer::execute()
{
}
