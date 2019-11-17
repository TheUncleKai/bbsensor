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
#include <map>

#include <channel.h>

#define CONFIG_INIT   8

#define CONFIG_TYPES  8
#define CONFIG_SSID   32
#define CONFIG_PASS   64

#define DEFAULT_DELAY 120

#define DEBUG_CONFIG


typedef struct {
    uint8_t init = CONFIG_INIT;
    uint8_t channel_list = 0;
    uint8_t channel_types[CONFIG_TYPES] = {0};
    uint32_t measure_delay = DEFAULT_DELAY;
    char wlan_ssid[CONFIG_SSID] = "";
    char wlan_pass[CONFIG_PASS] = "";
} configdata;


class Config
{
    public:
        Config();
        virtual ~Config();

        configdata* data();

        void setup();

        void read();
        void reset();
        void write();

        void print();

    protected:

    private:
        bool _verify();
        int m_pos;

        void write_byte(uint8_t data);
        void write_int(uint32_t data);

        uint8_t read_byte();
        uint32_t read_int();


        EEPROMClass* p_eeprom;
        configdata* p_data;
};



#endif // CONF_H_INCLUDED
