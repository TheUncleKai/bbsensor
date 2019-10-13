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

#include <string>

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


Display::Display (SPIClass* spi, int cs)
{
    this->p_spi = new SPI();
    this->m_cs = cs;

    this->p_spi->set_spi(spi);
}


Display::~Display()
{
    delete this->p_spi;
}


void Display::write(const char* input, int line)
{
    std::string text(input);
}


/*

    def __lcd_transfer(self, desc, char, bits):
        signal_on = 0x00
        signal_off = 0x00
        value = 0x00
        mod = 0x00

        bin_list = sorted(list(self.Translate))

        if char is True:
            signal_on += self.Pins.RS
            signal_off += self.Pins.RS

        signal_on += self.Pins.E

        for check in bin_list:
            if bits & check == check:
                signal_on += self.Translate[check]
                signal_off += self.Translate[check]
                value += self.Translate[check]

        bbq.log.debug2(desc, "BITS: " + format(bits, '04b'))
        bbq.log.debug2(desc, "VAL : " + format(value, '04b'))
        bbq.log.debug2(desc, "SON : " + format(signal_on, '06b'))
        bbq.log.debug2(desc, "SOFF: " + format(signal_off, '06b'))

        data = [[1, signal_on], [1, signal_off]]

        self.SPI.transfer2(data, self.Delay2)
        return
void _transfer(const char* keyword, bool text, byte data);

*/

byte Display::_process_pins(byte data)
{
    byte pin = 0x00;

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

void Display::_send(const char* keyword, byte data, byte signal, bool istext)
{
    byte pin_on, pin_off;
    byte pin = 0x00;

    pin = this->_process_pins(signal);

    if (istext == true)
    {
        pin = pin ^ PIN_RS;
    }

    pin_on = pin ^ PIN_E;
    pin_off = pin;

    debug_display(keyword, data, signal, pin);

    this->p_spi->transfer(this->m_cs, pin_on);
    this->p_spi->commit();
    delay(10);

    this->p_spi->transfer(this->m_cs, pin_off);
    this->p_spi->commit();
    delay(10);
}


void Display::_send_low(const char* keyword, byte data, bool istext)
{
    byte signal = (data & 0x0F) << 4;
    this->_send(keyword, data, signal, istext);
}


void Display::_send_high(const char* keyword, byte data, bool istext)
{
    byte signal = signal & 0xF0;
    this->_send(keyword, data, signal, istext);
}


void Display::setup()
{
    DEBUG_MSG("DISPLAY: setup cs pin %d\n", this->m_cs);
    pinMode(this->m_cs, OUTPUT);
    digitalWrite(this->m_cs, HIGH);

    /*

    // Function set
    // RS RW DB7 DB6 DB5 DB4

    // set 8 bit operation
    // 0  0  0   0   1   0      = 0010 -> 0x02


    // set 4 bit, set 2 lines and 5x8-Punkt-Matrix
    // 0  0  0   0   1   0      = 0010 -> 0x02
    // 0  0  1   0   *   *      = 1000 -> 0x08

    // turn on display and cursor
    // 0  0  0   0   0   0      = 0000 -> 0x00
    // 0  0  1   1   1   0      = 1110 -> 0x0e

    // Set mode to incement the address by one and shift cursor to right
    // 0  0  0   0   0   0      = 0000 -> 0x00
    // 0  0  0   1   1   0      = 0110 -> 0000 0110 -> 0x06
    */

    this->_send_low("INIT", 0x02, false);

    this->_send_low("4BIT", 0x02, false);
    this->_send_low("4BIT", 0x08, false);

    this->_send_low("DISP", 0x00, false);
    this->_send_low("DISP", 0x0e, false);

    this->_send_low("SET",  0x00, false);
    this->_send_low("SET",  0x06, false);

/*

        # Interface auf 8-Bit setzen
        self.__lcd_transfer("INIT", False, 0x03)
        time.sleep(self.Delay1)

        self.__lcd_transfer("INIT", False, 0x03)
        time.sleep(self.Delay1)

        self.__lcd_transfer("INIT", False, 0x03)
        time.sleep(self.Delay1)

        # Interface auf 4-Bit setzen
        self.__lcd_transfer("4BIT", False, 0x02)
        time.sleep(self.Delay2)

        # 2-zeilig, 5x8-Punkt-Matrix
        self.__lcd_transfer("DISP", False, 0x02)
        time.sleep(self.Delay2)
        self.__lcd_transfer("DISP", False, 0x08)
        time.sleep(self.Delay2)

        self.__lcd_transfer("SET", False, 0x00)
        time.sleep(self.Delay2)
        self.__lcd_transfer("SET", False, 0x06)
        time.sleep(self.Delay2)
*/
}


void Display::execute()
{
    this->p_spi->commit();
}
