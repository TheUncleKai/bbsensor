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

#include <config.h>
#include <debug.h>

#include <led.h>


LED::LED (int num, int pin)
{
    this->m_num = num;
    this->m_pin = pin;
    this->m_status = 0;
}


void LED::_on()
{
#ifdef LED_DEBUG
    DEBUG_MSG("LED%d: turn on\n", this->m_num);
#endif // LED_DEBUG
    digitalWrite(this->m_pin, LOW);
    this->m_status = 1;
}


void LED::_off()
{
#ifdef LED_DEBUG
    DEBUG_MSG("LED%d: turn off\n", this->m_num);
#endif // LED_DEBUG
    digitalWrite(this->m_pin, HIGH);
    this->m_status = 0;
}


void LED::toggle()
{
    if (this->m_status == 1) {
        this->m_status = 0;
        return;
    }

    if (this->m_status == 0) {
        this->m_status = 1;
        return;
    }
}


void LED::on()
{
    this->m_status = 1;
}


void LED::off()
{
    this->m_status = 0;
}


void LED::setup()
{
    DEBUG_MSG("LED%d: setup pin %d, status %d\n", this->m_num, this->m_pin, this->m_status);

    pinMode(this->m_pin, OUTPUT);
}


void LED::execute()
{
    if (this->m_status == 1) {
        this->_on();
        return;
    }
    if (this->m_status == 0) {
        this->_off();
        return;
    }
}
