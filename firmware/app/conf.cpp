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
#include <temperature.h>
#include <utils.h>
#include <CRC32.h>


const int EEPROM_storageSize = sizeof(Config::EEPROM_storage);


Config::Manager::Manager()
{
    this->p_eeprom = new EEPROMClass();
    this->p_data = new EEPROM_storage;
    this->m_crc = 0;
}


Config::Manager::~Manager()
{
    delete this->p_eeprom;
    delete this->p_data;
}


void Config::Manager::setup()
{
    this->p_eeprom->begin(512);
}


bool Config::Manager::verify()
{
    bool reset = false;

    if (this->m_crc != this->m_calc) {
#ifdef DEBUG_LEVEL1
        DEBUG_MSG("CONFIG: crc verify failed\n");
#endif // DEBUG_LEVEL1
        return false;
    }

    if (this->p_data->init != CONFIG_VERSION) {
#ifdef DEBUG_LEVEL1
        DEBUG_MSG("CONFIG: config version verify failed\n");
#endif // DEBUG_LEVEL1
        return false;
    }

    return true;
}


void Config::Manager::reset()
{
    int i = 0;

#ifdef DEBUG_LEVEL1
    DEBUG_MSG("CONFIG: reset config\n");
#endif // DEBUG_LEVEL1

    this->p_data->init = CONFIG_VERSION;
    this->p_data->measure_delay = DEFAULT_DELAY;

    this->p_data->wlan_wps = 0;
    memset(this->p_data->wlan_ssid, 0, WLAN_SSID);
    memset(this->p_data->wlan_pass, 0, WLAN_PASS);

    for (i = 0; i < TEMP_CHANNELS; i++) {
        this->p_data->channel_types[i] = 0;
    }
}


void Config::Manager::read()
{
    int i = 0;
    int pos = 0;
    CRC32 crc;
    uint8_t data = 0;
    uint8_t* byteStorage = NULL;
    uint32_t crc_value = 0;
    size_t crc_size = sizeof(uint32_t);


    // first we read struct data
    byteStorage = (uint8_t*)this->p_data;

    for (i = 0; i < EEPROM_storageSize; i++) {
        data = this->p_eeprom->read(pos + i);
        byteStorage[i] = data;
        crc.update(data);
    }

    // then we read crc data
    byteStorage = (uint8_t*)&crc_value;
    pos = EEPROM_storageSize + 1;

    for (i = 0; i < crc_size; i++) {
        byteStorage[i] = this->p_eeprom->read(pos + i);
    }

    this->m_calc = crc.finalize();
    this->m_crc = crc_value;

#ifdef DEBUG_LEVEL1
    DEBUG_MSG("CONFIG: read data, crc %x, read %x\n", this->m_calc, this->m_crc);
#endif // DEBUG_LEVEL1
}


void Config::Manager::write()
{
    size_t i = 0;
    int pos = 0;
    CRC32 crc;
    uint8_t data;
    uint32_t crc_value = 0;
    uint8_t* byteStorage = NULL;
    size_t crc_size = sizeof(uint32_t);

    byteStorage = (uint8_t*)this->p_data;

    for (i = 0; i < EEPROM_storageSize; i++) {
        data = byteStorage[i];
        this->p_eeprom->write(pos + i, byteStorage[i]);
        crc.update(data);
    }

    crc_value = crc.finalize();

    byteStorage = (uint8_t*)&crc_value;
    pos = EEPROM_storageSize + 1;

    for (i = 0; i < crc_size; i++) {
        this->p_eeprom->write(pos + i, byteStorage[i]);
    }

#ifdef DEBUG_LEVEL1
    DEBUG_MSG("CONFIG: commit data, crc %x\n", crc_value);
#endif // DEBUG_LEVEL1
    this->p_eeprom->commit();
}


void Config::Manager::set_channel(uint8_t number, uint8_t type)
{
    if (this->p_data == NULL)
        return;

    if (number >= TEMP_CHANNELS)
        return;

    this->p_data->channel_types[number] = (uint8_t)type;
}


void Config::Manager::set_delay(uint32_t measure_delay)
{
    if (this->p_data == NULL) {
        return;
    }

    this->p_data->measure_delay = measure_delay;
}


void Config::Manager::set_wlan(uint8_t wps_onoff, const char* wlan_ssid, const char* wlan_pass)
{
    size_t size_ssid = strlen(wlan_ssid);
    size_t size_pass = strlen(wlan_pass);

    int i = 0;

    if (this->p_data == NULL) {
        return;
    }

    this->p_data->wlan_wps = wps_onoff;

    if ((size_ssid >= WLAN_SSID) or (size_pass >= WLAN_PASS)) {
        return;
    }

    for (i = 0; i < WLAN_SSID; ++i) {
        if (i < size_ssid) {
            this->p_data->wlan_ssid[i] = wlan_ssid[i];
        } else {
            this->p_data->wlan_ssid[i] = 0;
        }
    }

    for (i = 0; i < WLAN_PASS; ++i) {
        if (i < size_pass) {
            this->p_data->wlan_pass[i] = wlan_pass[i];
        } else {
            this->p_data->wlan_pass[i] = 0;
        }
    }
}


uint8_t Config::Manager::get_channel(uint8_t number)
{
    if (this->p_data == NULL)
        return 0;

    if (number >= TEMP_CHANNELS)
        return 0;

    return this->p_data->channel_types[number];
}


Config::EEPROM_storage* Config::Manager::data()
{
    return this->p_data;
}


void Config::Manager::print()
{
#ifdef DEBUG_LEVEL1
    int i = 0;
    uint8_t channel_type = 0;
    DEBUG_MSG("CONFIG: init %u, delay %u\n", this->p_data->init, this->p_data->measure_delay);
    DEBUG_MSG("CONFIG: wps %u, ssid %s, pass %s\n",
        this->p_data->wlan_wps,
        this->p_data->wlan_ssid,
        this->p_data->wlan_pass);

    for (i = 0; i < TEMP_CHANNELS; i++) {
        channel_type = this->p_data->channel_types[i];
        DEBUG_MSG("CONFIG: channel %u, type %s\n", i, Temperature::TEMPERATURE_Type[channel_type]);
    }
#endif // DEBUG_LEVEL1
}
