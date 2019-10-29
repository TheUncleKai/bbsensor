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

#ifndef DEVICE_H_INCLUDED
#define DEVICE_H_INCLUDED

#include <SPI.h>

#define DEBUG_SPI


class Device
{
    public:
        virtual void setup();
        virtual void execute();

};


class SPI
{
    public:
        SPI ();
        virtual ~SPI();

        SPIClass* spi();

        void set_spi(SPIClass* spi);
        void transfer(int channel, char data);
        void commit();

    private:
        SPIClass* p_spi;
        int m_transfer, m_channel;
        char m_data;

        void _on(int channel);
        void _off(int channel);
};

#endif // DEVICE_H_INCLUDED
