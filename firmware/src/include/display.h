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

#define DISPLAY_A 1
#define DISPLAY_B 2
#define DISPLAY_C 4
#define DISPLAY_D 8
#define DISPLAY_E 16
#define DISPLAY_F 32
#define DISPLAY_G 64
#define DISPLAY_H 128


class Display : public Device
{
    public:
        Display (SPIClass* spi, int cs);
        virtual ~Display();

        void setup();
        void execute();

        void write_char(char data);
        void write_data(byte data);

    private:
        SPI* p_spi;
        int m_cs;

        void debug_binary(byte data);
};


#endif // DISPLAY_H_INCLUDED
