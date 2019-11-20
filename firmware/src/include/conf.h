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
#define CHANNEL_NAME   16

#define WLAN_SSID      32
#define WLAN_PASS      64

#define DEFAULT_DELAY  120

#define DEBUG_CONFIG


typedef struct {
    uint8_t number = 0;
    char name[16] = "";
    uint8_t type = 0;
    uint8_t active = 0;
} config_channel;


typedef struct {
    uint8_t wlan_wps = 0;
    char wlan_ssid[WLAN_SSID] = {0};
    char wlan_pass[WLAN_PASS] = {0};
} config_wlan;


typedef struct {
    uint8_t init = CONFIG_INIT;
    uint32_t measure_delay = DEFAULT_DELAY;
} config_main;


typedef std::list<config_channel*> ChannelConfig;

class Config
{
    public:
        Config();
        virtual ~Config();

        config_main* main();
        config_wlan* wlan();

        config_channel* get_channel(uint8_t number);

        void setup();

        void read();
        void reset();
        void write();

        void print();

    protected:

    private:
        config_main* p_main;
        config_wlan* p_wlan;

        ChannelConfig* p_channel;

        bool _verify();
        int m_pos;

        void write_byte(uint8_t data);
        void write_int(uint32_t data);

        uint8_t read_byte();
        uint32_t read_int();

        EEPROMClass* p_eeprom;
};



#endif // CONF_H_INCLUDED
