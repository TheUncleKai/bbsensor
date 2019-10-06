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

#include <display.h>

#define BYTE_TO_BINARY_PATTERN "%c%c%c%c%c%c%c%c"

#define BYTE_TO_BINARY(byte)  \
  (byte & 0x80 ? '1' : '0'), \
  (byte & 0x40 ? '1' : '0'), \
  (byte & 0x20 ? '1' : '0'), \
  (byte & 0x10 ? '1' : '0'), \
  (byte & 0x08 ? '1' : '0'), \
  (byte & 0x04 ? '1' : '0'), \
  (byte & 0x02 ? '1' : '0'), \
  (byte & 0x01 ? '1' : '0')


Display::Display (SPIClass* spi, int cs)
{
    this->p_spi = new SPI();
    this->m_cs = cs;

    this->p_spi->set_spi(spi);
}


Display::~Display()
{
    delete this->p_spi;
}


void Display::write_char(char data)
{
    this->p_spi->transfer(this->m_cs, data);
}


void Display::write_data(byte data)
{
    this->p_spi->transfer(this->m_cs, data);
}


void Display::setup()
{
    DEBUG_MSG("DISPLAY: setup cs pin %d\n", this->m_cs);
    pinMode(this->m_cs, OUTPUT);
}


void Display::execute()
{
    this->p_spi->commit();
}
