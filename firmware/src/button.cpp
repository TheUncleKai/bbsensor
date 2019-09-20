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

#include "button.h"

#include "config.h"
#include "debug.h"


Button::Button (int num, int pin)
{
    this->m_num = num;
    this->m_pin = pin;
    this->m_status = Button::NONE;
    this->p_isr = NULL;
    this->m_start = 0;
    this->m_end = 0;
    this->m_counter = 0;
    this->m_onoff = 0;
}


Button::~Button()
{
}


Button::status_t Button::status()
{
    return this->m_status;
}


void Button::setISR(void (*isr)(void))
{
    this->p_isr = isr;
}


void Button::handleISR()
{
    if (this->m_onoff == 0)
    {
        this->m_start = millis();
        this->m_onoff = 1;
    } else {
        this->m_end = millis();
        this->m_onoff = 0;
    }

    DEBUG_MSG("BUTTON%d: state %d, start %d, end %d\n", this->m_num, this->m_onoff, this->m_start, this->m_end);
}


void Button::setup()
{
    DEBUG_MSG("BUTTON%d: setup pin %d\n", this->m_num, this->m_pin);

    if (this->p_isr != NULL)
    {
        pinMode(this->m_pin, INPUT_PULLUP);
        attachInterrupt(digitalPinToInterrupt(this->m_pin), this->p_isr, CHANGE);

    } else {
        DEBUG_MSG("BUTTON%d: ISR is missing!\n", this->m_num);
    }
}


void Button::execute()
{
}
