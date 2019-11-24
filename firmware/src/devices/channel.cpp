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



Temperature::Channel::Channel(uint8_t num, uint8_t channel, Type type)
{
    this->p_lastvalue = NULL;
    this->m_measure = false;
    this->p_data = new ValueList;
    this->m_num = num;
    this->m_channel = channel;
    this->m_type = type;
}


Temperature::Channel::~Channel()
{
    this->clear();
    delete this->p_data;
}


Value* Temperature::Channel::value()
{
    return this->p_lastvalue;
}


void Temperature::Channel::clear()
{
    ValueList::iterator it;
    Value* value;

    for (it = this->p_data->begin(); it != this->p_data->end(); ++it) {
        value = (*it);
        delete value;
    }

    this->p_data->clear();
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


uint8_t Temperature::Channel::number()
{
    return this->m_num;
}


ValueList* Temperature::Channel::data()
{
    return this->p_data;
}


uint8_t Temperature::Channel::channel()
{
    return this->m_channel;
}


void Temperature::Channel::do_measure(bool measure)
{
    this->m_measure = measure;
}


void Temperature::Channel::add_value(Value* value)
{
    if (value->data > TEMP_LIMIT) {
        return;
    }

    if (this->p_data->size() == TEMP_ARRAY) {
#ifdef DEBUG_CHANNEL
    DEBUG_MSG("CHANNEL%u: channel %u, clear data\n", this->number(), this->channel());
#endif // DEBUG_CHANNEL

        this->clear();
    }

    if (this->m_type == Temperature::Type::VOLTAGE) {
        value->value = table_voltages[value->data];
    }

#ifdef DEBUG_CHANNEL
    DEBUG_MSG("CHANNEL%u: raw %u, value %5.3f\n",
        this->number(),
        value->data,
        value->value);
#endif // DEBUG_CHANNEL

    this->p_data->push_back(value);
    this->p_lastvalue = value;
}


bool Temperature::Channel::measure()
{
    return this->m_measure;
}
