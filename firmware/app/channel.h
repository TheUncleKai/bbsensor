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

#ifndef CHANNEL_H_INCLUDED
#define CHANNEL_H_INCLUDED

#include <SPI.h>
#include <device.h>

#define DEBUG_CHANNEL


namespace Temperature
{


typedef struct
{
    uint16_t data;
    float value;
} Value;


enum class Type
{
    NONE = 0,
    DATA = 1,
    VOLTAGE = 2,
    RTD = 3,
    PTC10 = 4,
    PTC100 = 5
};


class Channel : public Device
{
    public:
        Channel (uint8_t num, Type type);
        virtual ~Channel();

        void setup();
        void execute();
        void clear();

        Type type();
        Value* value();
        uint8_t channel();

        void add_value(uint16_t data);
        void do_measure(bool measure);
        bool measure();

    private:
        Value* p_lastvalue;
        Value** p_values;
        size_t m_counter;
        bool m_measure;
        uint8_t m_num;
        Type m_type;
};


};

#endif // CHANNEL_H_INCLUDED
