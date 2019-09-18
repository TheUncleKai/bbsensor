#include <Arduino.h>

#include "config.h"
#include "led.h"

LED::LED (int num, int pin) {
    _num = num;
    _pin = pin;
    _status = 0;
}


void LED::setup() {
    DEBUG_MSG("LED%d: setup pin %d, status %d\n", _num, _pin, _status);

    pinMode(_pin, OUTPUT);
}


void LED::toggle() {
    DEBUG_MSG("LED%d: toggle pin %d, status %d\n", _num, _pin, _status);

    if (_status == 0) {
        this->on();
        return;
    }

    if (_status == 1) {
        this->off();
        return;
    }
}


void LED::on() {
    DEBUG_MSG("LED%d: turn on\n", _num);
    digitalWrite(_pin, LOW);
    this->_status = 1;
}


void LED::off() {
    DEBUG_MSG("LED%d: turn off\n", _num);
    digitalWrite(_pin, HIGH);
    this->_status = 0;
}
