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
#include <debug.h>

#include <channel.h>
#include <data.h>


Temperature::Channel::Channel(uint8_t num)
{
    this->p_lastvalue = NULL;
    this->p_last = NULL;
    this->p_next = NULL;
    this->m_measure = false;
    this->m_num = num;
    this->m_counter = 0;
    this->m_type = Temperature::Type::NONE;
    this->p_data = new Temperature::Value *[TEMP_ARRAY];

    for (int i = 0; i < TEMP_ARRAY; ++i) {
        this->p_data[i] = new Temperature::Value;
    }

}


Temperature::Channel::~Channel()
{
    Temperature::Value* value;

    for (int i = 0; i < TEMP_ARRAY; ++i) {
        value = this->p_data[i];
        delete value;
    }

    delete this->p_data;
}


Temperature::Channel* Temperature::Channel::last()
{
    return this->p_last;
}


Temperature::Channel* Temperature::Channel::next()
{
    return this->p_next;
}


void Temperature::Channel::set(Temperature::Channel* last, Temperature::Channel* next)
{
    this->p_last = last;
    this->p_next = next;
}


void Temperature::Channel::set_type(Temperature::Type type)
{
    this->m_type = type;
}


Temperature::Value* Temperature::Channel::value()
{
    return this->p_lastvalue;
}


void Temperature::Channel::clear()
{
    int i = 0;
    Value* value;

    for (i = 0; i < TEMP_ARRAY; ++i) {
        value = this->p_data[i];
        value->data = 0;
        value->value = 0.0;
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

    Value* value = this->p_data[this->m_counter];

    value->data = data;

    if (this->m_type == Temperature::Type::RTD) {
        value->value = table_rtd[data];
    }

    if (this->m_type == Temperature::Type::PTC10) {
        value->value = table_ptc10[data];
    }

    if (this->m_type == Temperature::Type::PTC100) {
        value->value = table_ptc100[data];
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
