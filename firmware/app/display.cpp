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

#include <display.h>
#include <utils.h>

#define PIN_RS 0x01 // 1,  Qa
#define PIN_E  0x02 // 2,  Qb

#define PIN_DB0 0x04 // 4,  Qc
#define PIN_DB1 0x08 // 8,  Qd
#define PIN_DB2 0x10 // 16, Qe
#define PIN_DB3 0x20 // 32, Qf

#define PIN_DB4 0x04 // 4,  Qc
#define PIN_DB5 0x08 // 8,  Qd
#define PIN_DB6 0x10 // 16, Qe
#define PIN_DB7 0x20 // 32, Qf

#define POS_DB7 0x80 // 128, 1000 0000
#define POS_DB6 0x40 //  64, 0100 0000
#define POS_DB5 0x20 //  32, 0010 0000
#define POS_DB4 0x10 //  16, 0001 0000

#define DIGITS 16

#define LINE1 0x80
#define LINE2 0xc0

#define CLEAR 0x01

#define DELAY_ON  3
#define DELAY_OFF 2


Display::Manager::Manager (SPIClass* spi, uint8_t cs)
{
    this->p_spi = new SPI();
    this->m_cs = cs;

    this->p_spi->set_spi(spi);
    this->p_list = new Signal *[SIGNAL_LIST];
    this->m_size = 0;

    for (size_t i = 0; i < SIGNAL_LIST; ++i) {
        this->p_list[i] = NULL;
    }
}


Display::Manager::~Manager()
{
    delete this->p_spi;
    delete this->p_list;
}


uint8_t Display::Manager::_process_pins(uint8_t data)
{
    uint8_t pin = 0x00;

    if ((data & POS_DB7) == POS_DB7) {
        pin = pin | PIN_DB7;
    }
    if ((data & POS_DB6) == POS_DB6) {
        pin = pin | PIN_DB6;
    }
    if ((data & POS_DB5) == POS_DB5) {
        pin = pin | PIN_DB5;
    }
    if ((data & POS_DB4) == POS_DB4) {
        pin = pin | PIN_DB4;
    }

    return pin;
}


void Display::Manager::_send(Display::Signal* input)
{
    uint8_t pin_on, pin_off;
    uint8_t signal = 0x00;
    uint8_t pin = 0x00;


    if (input->type == Display::Type::SIG_HIGH) {
        signal = input->data & 0xF0;
    }

    if (input->type == Display::Type::SIG_LOW) {
        signal = (input->data & 0x0F) << 4;
    }

    pin = this->_process_pins(signal);

    if (input->istext == true)
    {
        pin = pin ^ PIN_RS;
    }

#ifdef DEBUG_LEVEL3
    debug_display("DISPLAY", input->data, signal, pin);
#endif // DEBUG_LEVEL3

    pin_on = pin ^ PIN_E;
    pin_off = pin;

    this->p_spi->transfer(this->m_cs, pin_on);
    this->p_spi->commit(false, NULL);
    delay(DELAY_ON);

    this->p_spi->transfer(this->m_cs, pin_off);
    this->p_spi->commit(false, NULL);
    delay(DELAY_OFF);
}


void Display::Manager::_send_low(uint8_t data, bool istext)
{
    Display::Signal* signal = new Signal();

    signal->data = data;
    signal->istext = istext;
    signal->type = Type::SIG_LOW;

    this->p_list[this->m_size] = signal;
    this->m_size++;
}


void Display::Manager::_send_high(uint8_t data, bool istext)
{
    Display::Signal* signal = new Signal();

    signal->data = data;
    signal->istext = istext;
    signal->type = Display::Type::SIG_HIGH;

    this->p_list[this->m_size] = signal;
    this->m_size++;
}


void Display::Manager::_set_line(uint8_t line)
{
    uint8_t data = 0;

    if (line == 1) {
        data = LINE1;

        this->_send_high(data, false);
        this->_send_low(data, false);
    }

    if (line == 2) {
        data = LINE2;

        this->_send_high(data, false);
        this->_send_low(data, false);
    }
}


void Display::Manager::clear()
{
    uint8_t data = CLEAR;

    this->_send_high(data, false);
    this->_send_low(data, false);
}


void Display::Manager::clear(uint8_t line)
{
    this->_set_line(line);

    for (uint8_t i = 0; i < DIGITS; ++i) {
        this->_send_high(32, true);
        this->_send_low(32, true);
    }
}


void Display::Manager::write(uint8_t line, const char* fmt, ...)
{
    va_list vl;

    va_start(vl, fmt);
    int size = vsnprintf(0, 0, fmt, vl) + sizeof('\0');
    va_end(vl);

    char buffer[size];

    va_start(vl, fmt);
    size = vsnprintf(buffer, size, fmt, vl);
    va_end(vl);

    uint8_t data = 0;

    this->_set_line(line);

    for (size_t i = 0; i < size; ++i) {
        data = buffer[i];
        this->_send_high(data, true);
        this->_send_low(data, true);
    }
}


void Display::Manager::setup()
{
#ifdef DEBUG_LEVEL2
    DEBUG_MSG("DISPLAY: setup cs pin %d\n", this->m_cs);
#endif // DEBUG_LEVEL2
    pinMode(this->m_cs, OUTPUT);
    digitalWrite(this->m_cs, HIGH);

    /*
    Function set
    RS RW DB7 DB6 DB5 DB4

    set 8 bit operation
    0  0  0   0   1   0      = 0010 -> 0x02

    set 4 bit, set 2 lines and 5x8-Punkt-Matrix
    0  0  0   0   1   0      = 0010 -> 0x02
    0  0  1   0   *   *      = 1000 -> 0x08

    turn on display and cursor
    0  0  0   0   0   0      = 0000 -> 0x00
    0  0  1   1   1   0      = 1110 -> 0x0e

    Set mode to incement the address by one and shift cursor to right
    0  0  0   0   0   0      = 0000 -> 0x00
    0  0  0   1   1   0      = 0110 -> 0000 0110 -> 0x06
    */

    this->_send_low(0x02, false); // INIT

    this->_send_low(0x02, false); // 4BIT
    this->_send_low(0x0b, false);

    this->_send_low(0x00, false); // DISP
    this->_send_low(0x0e, false);

    this->_send_low(0x00, false); // SET
    this->_send_low(0x06, false);

    this->execute();
}


void Display::Manager::execute()
{
    Display::Signal* signal = NULL;

    for (size_t i = 0; i < this->m_size; ++i) {
        signal = this->p_list[i];

        if (signal != NULL) {
            this->_send(signal);

            delete signal;
            this->p_list[i] = NULL;
        }

    }

    this->m_size = 0;
}
