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

#ifndef CONF_H_INCLUDED
#define CONF_H_INCLUDED

#include <EEPROM.h>
#include <list>

#include <channel.h>

#define CONFIG_INIT    2

#define CHANNEL_NUMBER 8
#define WLAN_SSID      32
#define WLAN_PASS      64

#define DEFAULT_DELAY  120

#define DEBUG_CONFIG


typedef struct {
    uint8_t init = CONFIG_INIT;
    uint32_t measure_delay = DEFAULT_DELAY;
    uint8_t wlan_wps = 0;
    char wlan_ssid[WLAN_SSID] = "";
    char wlan_pass[WLAN_PASS] = "";
    uint8_t channels = 0;
    uint8_t channel_types[CHANNEL_NUMBER] = {0};
} EEPROM_storage;


class Config
{
    public:
        Config();
        virtual ~Config();

        EEPROM_storage* data();

        void setup();

        void read();
        void reset();
        void write();

        void print();

    protected:

    private:
        EEPROM_storage* p_data;
        uint32_t m_crc;

        bool _verify();
        uint32_t _read_crc();

        EEPROMClass* p_eeprom;
};



#endif // CONF_H_INCLUDED
