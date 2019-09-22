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


class ClickSpan
{
    public:
        ClickSpan ();
        virtual ~ClickSpan();

        unsigned long start, end;

        unsigned long diff(ClickSpan* timespan);
        void reset();
        void copy(ClickSpan* timespan);
};


class Click
{
    public:
        Click ();
        virtual ~Click();

        enum Type {
            NONE = 0,
            SINGLE_CLICK = 1,
            DOUBLE_CLICK = 2,
            HOLD_CLICK = 3
        };

        void set_high(unsigned long timestamp);
        void set_low(unsigned long timestamp);
        void reset();

        Type type();

    private:
        unsigned long m_counter;
        Type m_type;

        ClickSpan* p_current;
        ClickSpan* p_last;

        void _process();
};


#endif // CLICK_H_INCLUDED
