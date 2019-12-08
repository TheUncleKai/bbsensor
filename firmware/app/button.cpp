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
#include <button.h>


Button::Button (uint8_t num, uint8_t pin)
{
    this->m_num = num;
    this->m_pin = pin;
    this->m_type = Button::NONE;
    this->m_high = 0;
    this->m_low = 0;

    this->p_isr = NULL;
}


Button::~Button()
{
}


void Button::setISR(void (*isr)(void))
{
    this->p_isr = isr;
}


void Button::handleISR()
{
    unsigned long timestamp = millis();

    if (digitalRead(this->m_pin) == HIGH) {
        this->m_high = timestamp;

#ifdef DEBUG_LEVEL2
        DEBUG_MSG("BUTTON%d: HIGH: %d, %u\n", this->m_num, 1, this->m_high);
#endif // DEBUG_LEVEL2
    }

    if (digitalRead(this->m_pin) == LOW) {
        this->m_low = timestamp;

#ifdef DEBUG_LEVEL2
        DEBUG_MSG("BUTTON%d: LOW: %d, %u\n", this->m_num, 0, this->m_low);
#endif // DEBUG_LEVEL2

        this->_process();
    }

}


void Button::_process()
{
    unsigned long diff, ddiff;

    diff = this->m_low - this->m_high;

#ifdef DEBUG_LEVEL2
    DEBUG_MSG("BUTTON%d: diff %d, high %d, low %d\n",
                this->m_num,
                diff,
                this->m_high,
                this->m_low);
#endif // DEBUG_LEVEL2

    if (diff > CLICK_SINGLE && diff < CLICK_HOLD) {
        this->m_type = Button::SINGLE_CLICK;
    }

    if (diff >= CLICK_HOLD) {
        this->m_type = Button::HOLD_CLICK;
    }

#ifdef DEBUG_LEVEL1
        DEBUG_MSG("BUTTON%d: %d\n", this->m_num, this->m_type);
#endif // DEBUG_LEVEL1

    this->m_high = 0;
    this->m_low = 0;
}


Button::Click Button::click()
{
    return this->m_type;
}


void Button::reset()
{
    this->m_type = Button::NONE;
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
