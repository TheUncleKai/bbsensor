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
#include <utils.h>


Config::Config()
{
    uint8_t i = 0;
    config_channel* channel = NULL;

    this->p_eeprom = new EEPROMClass();
    this->m_pos = 0;

    this->p_main = new config_main;
    this->p_wlan = new config_wlan;
    this->p_channel = new ChannelConfig;

    for (i = 0; i < CHANNEL_NUMBER; i++) {
        channel = new config_channel;
        channel->number = i;
        this->p_channel->push_back(channel);
    }
}


Config::~Config()
{
    ChannelConfig::iterator iter;
    config_channel* channel;

    for (iter = this->p_channel->begin(); iter != this->p_channel->end(); ++iter)
    {
        channel = (*iter);
        delete channel;
    }

    this->p_channel->clear();

    delete this->p_eeprom;
    delete this->p_main;
    delete this->p_wlan;
    delete this->p_channel;
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
    ChannelConfig::iterator iter;
    config_channel* channel;

    this->p_main->init = CONFIG_INIT;
    this->p_main->measure_delay = DEFAULT_DELAY;

    this->p_wlan->wlan_wps = 0;
    memset(this->p_wlan->wlan_ssid, 0, WLAN_SSID);
    memset(this->p_wlan->wlan_pass, 0, WLAN_PASS);

    for (iter = this->p_channel->begin(); iter != this->p_channel->end(); ++iter)
    {
        channel = (*iter);
        channel->active = 0;
        channel->number = 0;
        channel->type = 0;
        memset(channel->name, 0, CHANNEL_NAME);
    }
}


void Config::read()
{
    int i = 0;
    ChannelConfig::iterator iter;
    config_channel* channel;

    this->m_pos = 0;

    DEBUG_MSG("CONFIG: read\n");

    this->p_main->init = this->read_byte();
    this->p_main->measure_delay = this->read_int();
    this->p_wlan->wlan_wps = this->read_byte();

    for (iter = this->p_channel->begin(); iter != this->p_channel->end(); ++iter)
    {
        channel = (*iter);
        channel->active = this->read_byte();
        channel->number = this->read_byte();
        channel->type = this->read_byte();
    }
}


void Config::write()
{
    int i = 0;
    ChannelConfig::iterator iter;
    config_channel* channel;

    this->m_pos = 0;

    this->write_byte(this->p_main->init);
    this->write_int(this->p_main->measure_delay);

    this->write_byte(this->p_wlan->wlan_wps);

    for (iter = this->p_channel->begin(); iter != this->p_channel->end(); ++iter)
    {
        channel = (*iter);
        this->write_byte(channel->active);
        this->write_byte(channel->number);
        this->write_byte(channel->type);
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
    ChannelConfig::iterator iter;
    config_channel* channel;

    DEBUG_MSG("CONFIG: init    %u\n", this->p_main->init);
    DEBUG_MSG("CONFIG: delay   %u\n", this->p_main->measure_delay);

    DEBUG_MSG("CONFIG: wps     %u\n", this->p_wlan->wlan_wps);
    DEBUG_MSG("CONFIG: ssid    %s\n", this->p_wlan->wlan_ssid);
    DEBUG_MSG("CONFIG: pass    %s\n", this->p_wlan->wlan_pass);

    for (iter = this->p_channel->begin(); iter != this->p_channel->end(); ++iter)
    {
        channel = (*iter);
        DEBUG_MSG("CHANNEL%u: active %u\n", channel->number, channel->active);
        DEBUG_MSG("CHANNEL%u: type   %u\n", channel->number, channel->type);
        DEBUG_MSG("CHANNEL%u: name   %s\n", channel->number, channel->name);
    }
#endif // DEBUG_CONFIG
}
