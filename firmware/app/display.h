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

#ifndef DISPLAY_H_INCLUDED
#define DISPLAY_H_INCLUDED

#include <Arduino.h>
#include <SPI.h>

#include <device.h>

#define SIGNAL_LIST 256

namespace Display
{

#ifdef DEBUG_LEVEL3
void debug_display(const char* keyword, uint8_t data, uint8_t signal, uint8_t pin);
#endif // DEBUG_LEVEL3


enum class Type {
    SIG_HIGH = 0,
    SIG_LOW = 1
};


typedef struct
{
    uint8_t data;
    Type type;
    bool istext;
} Signal;


class Manager : public Device
{
    public:
        Manager (SPIClass* spi, uint8_t cs);
        virtual ~Manager();

        void setup();
        void execute();

        void clear();
        void clear(uint8_t line);
        void write(uint8_t line, const char* fmt, ...);

    private:
        SPI* p_spi;
        uint8_t m_cs;
        Signal** p_list;
        size_t m_size;

        uint8_t _process_pins(uint8_t data);
        void _send(Signal* input);

        void _clear_list();
        void _set_line(uint8_t line);

        void _send_low(uint8_t data, bool istext);
        void _send_high(uint8_t data, bool istext);
};


};

#endif // DISPLAY_H_INCLUDED
