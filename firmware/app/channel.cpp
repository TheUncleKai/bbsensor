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

#include <Arduino.h>

#include <settings.h>
#include <channel.h>
#include <tables.h>
#include <data.h>

Temperature::Channel::Channel(uint8_t num, Type type)
{
    this->p_lastvalue = NULL;
    this->m_measure = false;
    this->m_num = num;
    this->m_counter = 0;
    this->m_type = type;
}


Temperature::Channel::~Channel()
{
}


Temperature::Value* Temperature::Channel::value()
{
    return this->p_lastvalue;
}


void Temperature::Channel::clear()
{
    for (int i = 0; i < TEMP_ARRAY; ++i) {
        DATAList[this->m_num][i] = 0;
    }

    this->m_counter = 0;
}


Temperature::Type Temperature::Channel::type()
{
    return this->m_type;
}


void Temperature::Channel::setup()
{
}


void Temperature::Channel::execute()
{
}


uint8_t Temperature::Channel::channel()
{
    return this->m_num;
}


void Temperature::Channel::do_measure(bool measure)
{
    this->m_measure = measure;
}


void Temperature::Channel::add_value(uint16_t data)
{
    if (data > TEMP_LIMIT) {
        return;
    }

    if (this->m_counter == TEMP_ARRAY) {
#ifdef DEBUG_LEVEL2
    DEBUG_MSG("CHANNEL%u: clear data\n", this->channel());
#endif // DEBUG_LEVEL2

        this->clear();
    }

    Temperature::Value* value = new Temperature::Value;

    DATAList[this->m_num][this->m_counter] = data;
    value->data = data;

    if (this->m_type == Temperature::Type::VOLTAGE) {
        value->value = table_voltages[data];
    }

#ifdef DEBUG_LEVEL1
    DEBUG_MSG("%u\t%u\t%u\t%5.3f\n", this->m_num, this->m_counter, value->data, value->value);
#endif // DEBUG_LEVEL1

    this->p_lastvalue = value;
    this->m_counter++;
}


bool Temperature::Channel::measure()
{
    return this->m_measure;
}
