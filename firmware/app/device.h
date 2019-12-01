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

#define SPI_WAIT_ON  1
#define SPI_WAIT_OFF 2


class Device
{
    public:
        virtual void setup();
        virtual void execute();

};


class SPIWrapper
{
    public:
        SPIWrapper ();
        virtual ~SPIWrapper();

        SPIClass* spi();

        void set_spi(SPIClass* spi);
        void transfer(uint8_t channel, uint8_t data);
        void transfer(uint8_t channel, uint8_t data[], uint16_t size);
        uint8_t commit(bool debug_out, uint8_t* result, unsigned long wait_on = 0, unsigned long wait_off = 0);

    private:
        SPIClass* p_spi;
        uint8_t* p_data;
        uint8_t m_counter;
        uint8_t m_transfer, m_channel;

        void _on(uint8_t channel);
        void _off(uint8_t channel);
};

#endif // DEVICE_H_INCLUDED
