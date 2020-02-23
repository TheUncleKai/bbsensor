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
#include <display.h>
#include <utils.h>

#define BYTE_TO_BINARY_PATTERN "%c%c%c%c%c%c%c%c"

#define BYTE_TO_BINARY(byte)  \
  (byte & 0x80 ? '1' : '0'), \
  (byte & 0x40 ? '1' : '0'), \
  (byte & 0x20 ? '1' : '0'), \
  (byte & 0x10 ? '1' : '0'), \
  (byte & 0x08 ? '1' : '0'), \
  (byte & 0x04 ? '1' : '0'), \
  (byte & 0x02 ? '1' : '0'), \
  (byte & 0x01 ? '1' : '0')


//#define PIN_A0 0x01 // 1,   Qa
//#define PIN_A1 0x02 // 2,   Qb
//#define PIN_A2 0x04 // 4,   Qc
//#define PIN_A3 0x08 // 8,   Qd
//#define PIN_A4 0x10 // 16,  Qe
//#define PIN_A5 0x20 // 32,  Qf
//#define PIN_A6 0x40 // 64,  Qg
//#define PIN_A7 0x80 // 128, Qh

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

#define LINE1 0x80
#define LINE2 0xc0

#define CLEAR 0x01

#define DELAY_ON  3
#define DELAY_OFF 2


Display::Display (SPIClass* spi, uint8_t cs, uint8_t onoff) : Device(spi, cs, onoff)
{
    this->p_list = new Signal *[SIGNAL_LIST];
    this->m_size = 0;

    for (size_t i = 0; i < SIGNAL_LIST; ++i) {
        this->p_list[i] = NULL;
    }
}


Display::~Display()
{
    delete this->p_list;
}


uint8_t Display::_process_pins(uint8_t data)
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


void Display::_send(Signal* input)
{
    uint8_t pin_on, pin_off;
    uint8_t signal = 0x00;
    uint8_t pin = 0x00;


    if (input->type == Type::SIG_HIGH) {
        signal = input->data & 0xF0;
    }

    if (input->type == Type::SIG_LOW) {
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

    this->spi()->transfer(pin_on);
    this->spi()->commit(false, NULL);
    delay(DELAY_ON);

    this->spi()->transfer(pin_off);
    this->spi()->commit(false, NULL);
    delay(DELAY_OFF);
}


void Display::_send_low(uint8_t data, bool istext)
{
    Signal* signal = new Signal();

    signal->data = data;
    signal->istext = istext;
    signal->type = Type::SIG_LOW;

    this->p_list[this->m_size] = signal;
    this->m_size++;
}


void Display::_send_high(uint8_t data, bool istext)
{
    Signal* signal = new Signal();

    signal->data = data;
    signal->istext = istext;
    signal->type = Type::SIG_HIGH;

    this->p_list[this->m_size] = signal;
    this->m_size++;
}


void Display::_set_line(uint8_t line)
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


void Display::clear()
{
    uint8_t data = CLEAR;

    this->_send_high(data, false);
    this->_send_low(data, false);
}


void Display::write(uint8_t line, const char* fmt, ...)
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

    for (size_t i = 0; i < DISPLAY_DIGITS; ++i) {
        if (i < size) {
            data = buffer[i];
        } else {
            data = 32;
        }
        this->_send_high(data, true);
        this->_send_low(data, true);
    }
}


void Display::setup()
{
#ifdef DEBUG_LEVEL1
    DEBUG_MSG("DISPLAY: setup pin %d\n", this->pin());
#endif // DEBUG_LEVEL1

    pinMode(this->pin(), OUTPUT);

    // reset display, we set high to bring the PNP down
#ifdef DEBUG_LEVEL1
    DEBUG_MSG("DISPLAY: disable display\n");
#endif // DEBUG_LEVEL1
    digitalWrite(this->pin(), LOW);

    delay(2000);

    // reset display, we set low to bring the PNP up
#ifdef DEBUG_LEVEL1
    DEBUG_MSG("DISPLAY: enable display\n");
#endif // DEBUG_LEVEL1
    digitalWrite(this->pin(), HIGH);

#ifdef DEBUG_LEVEL1
    DEBUG_MSG("DISPLAY: wait start\n");
#endif // DEBUG_LEVEL1

    delay(2000);

    this->spi()->on();

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

    this->write(1, "BOOT...");
    this->execute();
}


void Display::execute()
{
    Signal* signal = NULL;

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
