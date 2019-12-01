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

#include <loop.h>

Loop::Loop()
{
    this->p_channel = new uint32_t[CHANNEL_LOOPS];
    this->p_number = new uint32_t[CHANNEL_LOOPS];

    this->m_bootup = 0;
    this->m_delay = LOOP_WAIT;

    this->m_counter = 0;
    this->m_timestamp = 0;
    this->m_activate = false;

    for (size_t i = 0; i < CHANNEL_LOOPS; ++i) {
        this->p_channel[i] = 0;
        this->p_number[i] = 0;
    }

}


Loop::~Loop()
{
    //dtor
}


uint32_t Loop::counter()
{
    return this->m_counter;
}


uint32_t Loop::number(size_t channel)
{
    if (channel >= CHANNEL_LOOPS)
        return 0;

    return this->p_number[channel];
}


void Loop::setup()
{
    DEBUG_MSG("Bootup...\n");
    this->m_bootup = millis();
}


void Loop::start()
{
    this->m_timestamp = millis();
    this->m_counter++;

    if (this->m_activate == false)
        return;

    for (size_t i = 0; i < CHANNEL_LOOPS; ++i) {
        if (this->p_channel[i] > 0)
            this->p_number[i]++;
    }
}


void Loop::finish()
{
    delay(this->m_delay);

    if (this->m_activate == false)
        return;

    for (size_t i = 0; i < CHANNEL_LOOPS; ++i) {
        if (this->p_number[i] == this->p_channel[i]) {
            this->p_number[i] = 0;
        }
    }
}


void Loop::activate()
{
    this->m_activate = true;
}

void Loop::set_counter(size_t channel, uint32_t n)
{
    if (channel >= CHANNEL_LOOPS)
        return;

    this->p_channel[channel] = n;
}
