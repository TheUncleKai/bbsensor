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

#ifndef LOOP_H_INCLUDED
#define LOOP_H_INCLUDED

#include <settings.h>


class Loop
{
    public:
        Loop();
        virtual ~Loop();

        uint32_t counter();
        uint32_t number(size_t channel);

        void setup();
        void start();
        void finish();
        void activate();
        void set_counter(size_t channel, uint32_t n);

    protected:

    private:
        uint32_t* p_channel;
        uint32_t* p_number;
        bool m_activate;
        uint32_t m_bootup, m_delay, m_counter, m_timestamp;
};

#endif // LOOP_H_INCLUDED
