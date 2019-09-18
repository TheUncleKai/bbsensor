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

#include "led.h"

#include "config.h"
#include "debug.h"


LED::LED (int num, int pin)
{
    _num = num;
    _pin = pin;
    _status = 0;
}


void LED::_on()
{
    DEBUG_MSG("LED%d: turn on\n", _num);
    digitalWrite(_pin, LOW);
    this->_status = 1;
}


void LED::_off()
{
    DEBUG_MSG("LED%d: turn off\n", _num);
    digitalWrite(_pin, HIGH);
    this->_status = 0;
}


void LED::toggle()
{
    if (this->_status == 1) {
        this->_status = 0;
        return;
    }

    if (this->_status == 0) {
        this->_status = 1;
        return;
    }
}


void LED::on()
{
    this->_status = 1;
}


void LED::off()
{
    this->_status = 0;
}


void LED::setup()
{
    DEBUG_MSG("LED%d: setup pin %d, status %d\n", _num, _pin, _status);

    pinMode(_pin, OUTPUT);
}


void LED::execute()
{
    if (this->_status == 1) {
        this->_on();
        return;
    }
    if (this->_status == 0) {
        this->_off();
        return;
    }
}
