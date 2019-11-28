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

#ifndef CLICK_H_INCLUDED
#define CLICK_H_INCLUDED

#include <Arduino.h>

namespace Click
{


class Span
{
    public:
        Span ();
        virtual ~Span();

        unsigned long start, end;

        unsigned long diff(Span* timespan);
        void reset();
        void copy(Span* timespan);
};


enum class Type
{
    NONE = 0,
    SINGLE = 1,
    DOUBLE = 2,
    HOLD = 3
};


class Manager
{
    public:
        Manager (uint8_t num);
        virtual ~Manager();

        void set_high(unsigned long timestamp);
        void set_low(unsigned long timestamp);
        void reset();

        Type type();

    private:
        uint8_t m_num;
        unsigned long m_counter;
        Type m_type;

        Span* p_current;
        Span* p_last;

        void _process();
};


};

#endif // CLICK_H_INCLUDED
