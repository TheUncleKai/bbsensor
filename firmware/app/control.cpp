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

#include <control.h>

Control::Manager::Manager()
{
    this->p_channel = new uint32_t[CONTROL_SLOTS];
    this->p_number = new uint32_t[CONTROL_SLOTS];
    this->p_state = new Control::State;

    this->m_bootup = 0;
    this->m_delay = LOOP_WAIT;

    this->m_counter = 0;
    this->m_timestamp = 0;
    this->m_activate = false;

    for (size_t i = 0; i < CONTROL_SLOTS; ++i) {
        this->p_channel[i] = 0;
        this->p_number[i] = 0;
    }

}


Control::Manager::~Manager()
{
    delete this->p_channel;
    delete this->p_number;
    delete this->p_state;
}


uint32_t Control::Manager::counter()
{
    return this->m_counter;
}


Control::State* Control::Manager::state()
{
    return this->p_state;
}


uint32_t Control::Manager::number(size_t channel)
{
    if (channel >= CONTROL_SLOTS)
        return 0;

    return this->p_number[channel];
}


void Control::Manager::setup()
{
    DEBUG_MSG("Bootup...\n");
    this->m_bootup = millis();
}


void Control::Manager::start()
{
    this->m_timestamp = millis();
    this->m_counter++;

    if (this->m_activate == false)
        return;

    for (size_t i = 0; i < CONTROL_SLOTS; ++i) {
        if (this->p_channel[i] > 0)
            this->p_number[i]++;
    }
}


void Control::Manager::finish()
{
    delay(this->m_delay);

    if (this->m_activate == false)
        return;

    for (size_t i = 0; i < CONTROL_SLOTS; ++i) {
        if (this->p_number[i] == this->p_channel[i]) {
            (*this->p_func[i]);
            this->p_number[i] = 0;
        }
    }
}


void Control::Manager::activate()
{
    this->m_activate = true;
}

void Control::Manager::set_counter(size_t channel, uint32_t n, void (*func)(void))
{
    if (channel >= CONTROL_SLOTS)
        return;

    this->p_channel[channel] = n;
    this->p_func[channel] = func;
}


void Control::Manager::reset_counter(size_t channel)
{
    if (channel >= CONTROL_SLOTS)
        return;

    this->p_number[channel] = 0;
}
