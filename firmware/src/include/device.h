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
#include <list>

#define DEBUG_SPI


typedef std::list<uint8_t> SPIData;


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
        void transfer(uint8_t channel, uint8_t data);
        void transfer(uint8_t channel, uint8_t data[], uint16_t size);
        void commit(bool debug_out, SPIData* result);

    private:
        SPIClass* p_spi;
        SPIData* p_data;
        uint8_t m_transfer, m_channel;

        void _on(uint8_t channel);
        void _off(uint8_t channel);
};

#endif // DEVICE_H_INCLUDED
