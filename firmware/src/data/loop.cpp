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
    this->m_bootup = 0;
    this->m_delay = LOOP_WAIT;
    this->m_counter = 0;
    this->m_timestamp = 0;

    this->m_number = 0;
    this->m_max = 1;
}


Loop::~Loop()
{
    //dtor
}


unsigned long Loop::bootup()
{
    return this->m_bootup;
}


unsigned long Loop::counter()
{
    return this->m_counter;
}


unsigned long Loop::timestamp()
{
    return this->m_timestamp;
}


unsigned long Loop::number()
{
    return this->m_number;
}


void Loop::setup()
{
    DEBUG_MSG("Bootup...\n");
    this->m_bootup = millis();
    this->m_number = 0;
}


void Loop::start()
{
    this->m_timestamp = millis();
    if (this->m_max > 0) {
        this->m_number++;
    } else {
        DEBUG_MSG("Loop %u: time %d, number %d, max %d\n",
            this->m_counter,
            this->m_timestamp);
    }
}


void Loop::finish()
{
    delay(this->m_delay);
    this->m_counter++;

    if (this->m_max > 0) {
        if (this->m_number == this->m_max) {

#ifdef DEBUG_LOOP
        DEBUG_MSG("Loop %u: time %d, number %d, max %d\n",
            this->m_counter,
            this->m_timestamp,
            this->m_number,
            this->m_max);
#endif // DEBUG_LOOP

            this->m_number = 0;
        }
    }
}


void Loop::set_numer(int n)
{
    this->m_max = n;
}
