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

    this->p_isr = NULL;

    this->m_onoff = 0;

    this->p_click = new Click();
}


Button::~Button()
{
    delete this->p_click;
}


void Button::setISR(void (*isr)(void))
{
    this->p_isr = isr;
}


void Button::handleISR()
{
    unsigned long timestamp = millis();

    if (digitalRead(this->m_pin) == HIGH) {
        this->p_click->set_high(timestamp);
        this->m_onoff = 1;
    }

    if (digitalRead(this->m_pin) == LOW) {
        this->p_click->set_low(timestamp);
        this->m_onoff = 0;
    }

#ifdef BUTTON_DEBUG
    DEBUG_MSG("BUTTON%d: state %d\n",
                this->m_num,
                this->m_onoff);
#endif // BUTTON_DEBUG
}


Click::Type Button::get_click()
{
    Click::Type click = this->p_click->type();

    this->p_click->reset();
    return click;
}



void Button::setup()
{
    DEBUG_MSG("BUTTON%d: setup pin %d\n", this->m_num, this->m_pin);

    this->p_click->reset();

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
