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

#include <list>
#include <SPI.h>

#include <device.h>
#include <tables.h>

#include <list>
#include <map>

#define DEBUG_CHANNEL


namespace Temperature
{


enum class Type
{
    NONE = 0,
    VOLTAGE = 1,
    RTD = 2,
    PTC10 = 3,
    PTC100 = 4
};


class Channel : public Device
{
    public:
        Channel (uint8_t num, uint8_t channel, Type type);
        virtual ~Channel();

        void setup();
        void execute();
        void clear();

        Type type();
        uint8_t number();
        ValueList* data();
        Value* value();
        uint8_t channel();

        void add_value(Value* value);
        void do_measure(bool measure);
        bool measure();

    private:
        Value* p_lastvalue;
        bool m_measure;
        uint8_t m_num, m_channel;
        Type m_type;
        ValueList* p_data;
};

typedef std::list<Channel*> ChannelList;

};

#endif // CHANNEL_H_INCLUDED
