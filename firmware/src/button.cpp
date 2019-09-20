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
    this->p_rising = NULL;
    this->p_falling = NULL;
    this->m_start = 0;
    this->m_end = 0;
    this->m_counter = 0;
}


Button::~Button()
{
}


Button::status_t Button::status()
{
    return this->m_status;
}


void Button::setISR(void (*rising_isr)(void), void (*falling_isr)(void))
{
    this->p_rising = rising_isr;
    this->p_falling = falling_isr;
}


void Button::handleRISING()
{
    DEBUG_MSG("BUTTON%d: RISING\n", this->m_num);
    this->m_start = millis();
}


void Button::handleFALLING()
{
    DEBUG_MSG("BUTTON%d: FALLING\n", this->m_num);
    this->m_end = millis();
}


void Button::setup()
{
    DEBUG_MSG("BUTTON%d: setup pin %d\n", this->m_num, this->m_pin);

    if (this->p_rising != NULL && this->p_falling != NULL)
    {
        pinMode(this->m_pin, INPUT_PULLUP);
        attachInterrupt(digitalPinToInterrupt(this->m_pin), this->p_rising, RISING);
        attachInterrupt(digitalPinToInterrupt(this->m_pin), this->p_falling, FALLING);

    } else {
        DEBUG_MSG("BUTTON%d: ISR is missing!\n", this->m_num);
    }
}


void Button::execute()
{
}
