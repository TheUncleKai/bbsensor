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

Channel::Channel(uint8_t num, Type type)
{
    this->p_lastvalue = NULL;
    this->m_measure = false;
    this->m_num = num;
    this->m_type = type;
    this->m_head = 0;
    this->m_tail = 0;
    this->p_lastvalue = new Value;

    this->p_lastvalue->data = 0;
    this->p_lastvalue->value = 0.0;
}


Channel::~Channel()
{
    delete this->p_lastvalue;
}


Value* Channel::value()
{
    return this->p_lastvalue;
}


bool Channel::empty() const
{
    return (!this->m_full &&(this->m_head == this->m_tail));
}


bool Channel::full() const
{
    return this->m_full;
}


size_t Channel::size() const
{
    size_t size = TEMP_ARRAY;

    if (this->m_full != true) {
        if (this->m_head > this->m_tail) {
            size = this->m_head - this->m_tail;
        } else {
            size = TEMP_ARRAY + this->m_head - this->m_tail;
        }
    }

    return size;
}


Type Channel::type()
{
    return this->m_type;
}


void Channel::setup()
{
}


void Channel::execute()
{
}


uint8_t Channel::channel()
{
    return this->m_num;
}


void Channel::do_measure(bool measure)
{
    this->m_measure = measure;
}


void Channel::put(uint16_t data)
{
    if (data > TEMP_LIMIT) {
        return;
    }

    DATAList[this->m_num][this->m_head] = data;

    if (this->m_full == true) {
        this->m_tail = (this->m_tail + 1) % TEMP_ARRAY;
    }

    this->m_head = (this->m_head + 1) % TEMP_ARRAY;

    this->m_full = this->m_head == this->m_tail;


    this->p_lastvalue->data = data;

    if (this->m_type == Type::VOLTAGE) {
        this->p_lastvalue->value = table_voltages[data];
    }

#ifdef DEBUG_LEVEL1
    DEBUG_MSG("%u\t%u\t%u\t%5.3f\n",
              this->m_num,
              this->m_head,
              this->p_lastvalue->data,
              this->p_lastvalue->value);
#endif // DEBUG_LEVEL1
}


uint16_t Channel::get()
{
    if (this->empty() == true) {
        return 0;
    }

    uint16_t data = DATAList[this->m_num][this->m_tail];

    this->m_full = false;
    this->m_tail = (this->m_tail + 1) % TEMP_ARRAY;

    return data;
}


bool Channel::measure()
{
    return this->m_measure;
}
