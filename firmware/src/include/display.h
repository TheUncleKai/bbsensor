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

#include <SPI.h>

#include <device.h>


class Display : public Device
{
    public:
        Display (SPIClass* spi, int cs);
        virtual ~Display();

        void setup();
        void execute();

        void clear();
        void write(const char* input, int line);

    private:
        SPI* p_spi;
        int m_cs;

        byte _process_pins(byte data);

        void _send(const char* keyword, byte data, byte signal, bool istext);


        void _set_line(int line);

        void _send_low(const char* keyword, byte data, bool istext);
        void _send_high(const char* keyword, byte data, bool istext);
};


#endif // DISPLAY_H_INCLUDED
