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


const char* Button::CLICK_Type[] = {
    "NONE",
    "SINGLE",
    "HOLD"
};



Button::Manager::Manager (uint8_t num, uint8_t pin) : Device(num, pin)
{
    this->m_type = Button::Click::NONE;
    this->m_high = 0;
    this->m_low = 0;

    this->p_isr = NULL;
}


Button::Manager::~Manager()
{
}


void Button::Manager::setISR(void (*isr)(void))
{
    this->p_isr = isr;
}


void Button::Manager::handleISR()
{
    unsigned long timestamp = millis();

    if (digitalRead(this->pin()) == HIGH) {
        this->m_high = timestamp;

#ifdef DEBUG_LEVEL2
        DEBUG_MSG("BUTTON%d: HIGH: %d, %u\n", this->number(), 1, this->m_high);
#endif // DEBUG_LEVEL2
    }

    if (digitalRead(this->pin()) == LOW) {
        this->m_low = timestamp;

#ifdef DEBUG_LEVEL2
        DEBUG_MSG("BUTTON%d: LOW: %d, %u\n", this->number(), 0, this->m_low);
#endif // DEBUG_LEVEL2

        this->_process();
    }

}


void Button::Manager::_process()
{
    unsigned long diff, ddiff;

    diff = this->m_low - this->m_high;

#ifdef DEBUG_LEVEL2
    DEBUG_MSG("BUTTON%d: diff %d, high %d, low %d\n",
                this->number(),
                diff,
                this->m_high,
                this->m_low);
#endif // DEBUG_LEVEL2

    if (diff > CLICK_SINGLE && diff < CLICK_HOLD) {
        this->m_type = Button::Click::SINGLE;
    }

    if (diff >= CLICK_HOLD) {
        this->m_type = Button::Click::HOLD;
    }

#ifdef DEBUG_LEVEL1
        DEBUG_MSG("BUTTON%d: %s\n", this->number(), Button::CLICK_Type[(size_t)this->m_type]);
#endif // DEBUG_LEVEL1

    this->m_high = 0;
    this->m_low = 0;
}


Button::Click Button::Manager::click()
{
    return this->m_type;
}


void Button::Manager::reset()
{
    this->m_type = Button::Click::NONE;
}


void Button::Manager::setup()
{
    DEBUG_MSG("BUTTON%d: setup pin %d\n", this->number(), this->pin());

    if (this->p_isr != NULL)
    {
        pinMode(this->pin(), INPUT_PULLUP);
        attachInterrupt(digitalPinToInterrupt(this->pin()), this->p_isr, CHANGE);

    } else {
        DEBUG_MSG("BUTTON%d: ISR is missing!\n", this->number());
    }
}


void Button::Manager::execute()
{
}
