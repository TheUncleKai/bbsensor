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


class Temperature : public Device
{
    public:
        Temperature (EEPROMClass* eeprom, SPIClass* spi, int cs);
        virtual ~Temperature();

        void setup();
        void execute();
        ChannelList* channel();

        int cs();

    private:
        int m_cs;
        SPIClass* p_spi;
        ChannelList* p_channels;
        EEPROMClass* p_eeprom;
};


#endif // TEMPERATURE_H_INCLUDED
