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

#include <list>

#include <EEPROM.h>
#include <channel.h>
#include <settings.h>

#define CONFIG_VERSION 3

#define DEBUG_CONFIG

namespace Config
{


typedef struct {
    uint8_t init = CONFIG_VERSION;
    uint32_t measure_delay = DEFAULT_DELAY;
    uint8_t wlan_wps = 0;
    char wlan_ssid[WLAN_SSID] = "";
    char wlan_pass[WLAN_PASS] = "";
    uint8_t channel_types[TEMP_CHANNELS] = {0};
} EEPROM_storage;


class Manager
{
    public:
        Manager();
        virtual ~Manager();

        EEPROM_storage* data();

        void setup();

        void read();
        bool verify();

        void reset();
        void write();

        void set_channel(uint8_t number, Temperature::Type type);
        void set_delay(uint32_t measure_delay);
        void set_wlan(uint8_t wps_onoff, const char* wlan_ssid, const char* wlan_pass);

        Temperature::Type get_channel(uint8_t number);

        void print();

    protected:

    private:
        EEPROM_storage* p_data;
        uint32_t m_crc, m_calc;
        void read_crc();

        EEPROMClass* p_eeprom;
};


};

#endif // CONF_H_INCLUDED
