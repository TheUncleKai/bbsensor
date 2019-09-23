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

#include <channel.h>


Channel::Channel(SPIClass* spi, int num, int channel, int type)
{
    this->m_spi = spi;
    this->m_num = num;
    this->m_channel = channel;

    if (type == 0) {
        this->m_type = Channel::NONE;
    }
    if (type == 1) {
        this->m_type = Channel::RTD;
    }
    if (type == 2) {
        this->m_type = Channel::PTC10;
    }
    if (type == 3) {
        this->m_type = Channel::PTC100;
    }
}


Channel::~Channel()
{
}


Channel::Type Channel::type()
{
    return this->m_type;
}


int Channel::number()
{
    return this->m_num;
}


int Channel::channel()
{
    return this->m_channel;
}


void Channel::setup()
{
}


void Channel::execute()
{
}
