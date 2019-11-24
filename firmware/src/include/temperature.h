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

#ifndef TEMPERATURE_H_INCLUDED
#define TEMPERATURE_H_INCLUDED

#include <list>
#include <EEPROM.h>
#include <SPI.h>

#include <device.h>
#include <channel.h>

//#define DEBUG_TEMPERATURE

namespace Temperature
{


class Manager : public Device
{
    public:
        Manager (SPIClass* spi, uint8_t cs);
        virtual ~Manager();

        void setup();
        void add_channel(uint8_t number, Temperature::Type type);

        void execute();

        void set_measure(bool all, uint8_t channel_number, bool measure);
        Channel* get_channel(uint8_t channel_number);

        uint8_t cs();

    private:
        uint8_t m_cs;
        SPI* p_spi;

        void _process_channel(Channel* channel);
};


};

#endif // TEMPERATURE_H_INCLUDED
