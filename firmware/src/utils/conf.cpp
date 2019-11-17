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

#include <conf.h>
#include <debug.h>

Config::Config()
{
    this->p_eeprom = new EEPROMClass();
    this->p_data = new configdata;
    this->m_pos = 0;
}


Config::~Config()
{
    delete this->p_eeprom;
    delete this->p_data;
}


void Config::setup()
{
    bool check;
    DEBUG_MSG("CONFIG: setup\n");
    this->p_eeprom->begin(512);

    DEBUG_MSG("CONFIG: check\n");
    check = this->_verify();

    if (check == false) {
        DEBUG_MSG("CONFIG: reset\n");
        this->reset();
        this->write();
    }
}


bool Config::_verify()
{
    uint8_t config_init = 0;

    config_init = this->p_eeprom->read(0);

    if (config_init != CONFIG_INIT) {
        return false;
    }

    return true;
}


void Config::reset()
{
    int i = 0;

    this->p_data->init = CONFIG_INIT;
    this->p_data->channel_list = 0;
    this->p_data->measure_delay = DEFAULT_DELAY;

    for (i = 0; i < CONFIG_TYPES; i++) {
        this->p_data->channel_types[i] = 0;
    }

    for (i = 0; i < CONFIG_SSID; i++) {
        this->p_data->wlan_ssid[i] = 0;
    }

    for (i = 0; i < CONFIG_PASS; i++) {
        this->p_data->wlan_pass[i] = 0;
    }
}


void Config::read()
{
    int i = 0;
    this->m_pos = 0;

    DEBUG_MSG("CONFIG: read\n");

    this->p_data->init = this->read_byte();

    this->p_data->channel_list = this->read_byte();

    this->p_data->measure_delay = this->read_int();

    for (i = 0; i < CONFIG_TYPES; i++) {
        this->p_data->channel_types[i] = this->read_byte();
    }

    for (i = 0; i < CONFIG_SSID; i++) {
        this->p_data->wlan_ssid[i] = this->read_byte();
    }

    for (i = 0; i < CONFIG_PASS; i++) {
        this->p_data->wlan_pass[i] = this->read_byte();
    }
}


void Config::write()
{
    int i = 0;
    this->m_pos = 0;

    // Write Init
    this->write_byte(this->p_data->init);

    // Write channel_list
    this->write_byte(this->p_data->channel_list);

    // Write measure_delay
    this->write_int(this->p_data->measure_delay);

    // Write channel_list
    for (i = 0; i < CONFIG_TYPES; i++) {
        this->write_byte(this->p_data->channel_types[i]);
    }

    for (i = 0; i < CONFIG_SSID; i++) {
        this->write_byte(this->p_data->wlan_ssid[i]);
    }

    for (i = 0; i < CONFIG_PASS; i++) {
        this->write_byte(this->p_data->wlan_pass[i]);
    }

    DEBUG_MSG("CONFIG: commit\n");
    this->p_eeprom->commit();
}


void Config::write_byte(uint8_t data)
{
    DEBUG_MSG("CONFIG: write pos %u, write %u\n", this->m_pos, data);
    this->p_eeprom->write(this->m_pos, data);
    this->m_pos++;
}


void Config::write_int(uint32_t data)
{
    uint8_t* p = (uint8_t*)&data;

    DEBUG_MSG("CONFIG: write32, pos %u: %u\n", this->m_pos, data);

    this->write_byte(*p);
    this->write_byte(*(p + 1));
    this->write_byte(*(p + 2));
    this->write_byte(*(p + 3));
}


uint8_t Config::read_byte()
{
    uint8_t val = this->p_eeprom->read(this->m_pos);
    this->m_pos++;

    return val;
}


uint32_t Config::read_int()
{
    uint32_t val = 0;

    uint8_t* p = (uint8_t*)&val;

    *p = this->read_byte();
    *(p + 1) = this->read_byte();
    *(p + 2) = this->read_byte();
    *(p + 3) = this->read_byte();

    DEBUG_MSG("CONFIG: read32 %u\n", val);
    return val;
}


void Config::print()
{
#ifdef DEBUG_CONFIG
    DEBUG_MSG("CONFIG: init    %u\n", this->p_data->init);
    DEBUG_MSG("CONFIG: list    %u\n", this->p_data->channel_list);
    DEBUG_MSG("CONFIG: delay   %u\n", this->p_data->measure_delay);
    DEBUG_MSG("CONFIG: type  1 %u\n", this->p_data->channel_types[0]);
    DEBUG_MSG("CONFIG: type  2 %u\n", this->p_data->channel_types[1]);
    DEBUG_MSG("CONFIG: type  3 %u\n", this->p_data->channel_types[2]);
    DEBUG_MSG("CONFIG: type  4 %u\n", this->p_data->channel_types[3]);
    DEBUG_MSG("CONFIG: type  5 %u\n", this->p_data->channel_types[4]);
    DEBUG_MSG("CONFIG: type  6 %u\n", this->p_data->channel_types[5]);
    DEBUG_MSG("CONFIG: type  7 %u\n", this->p_data->channel_types[6]);
    DEBUG_MSG("CONFIG: type  8 %u\n", this->p_data->channel_types[7]);
    DEBUG_MSG("CONFIG: ssid    %s\n", this->p_data->wlan_ssid);
    DEBUG_MSG("CONFIG: pass    %s\n", this->p_data->wlan_pass);
#endif // DEBUG_CONFIG
}
