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

#ifndef BUTTON_H_INCLUDED
#define BUTTON_H_INCLUDED

#include <device.h>


namespace Button
{


enum class Click
{
    NONE = 0,
    SINGLE = 1,
    HOLD = 2
};


extern const char* CLICK_Type[];


class Manager : public Device
{
    public:
        Manager (uint8_t num, uint8_t pin);
        virtual ~Manager();

        void setISR(void (*isr)(void));
        void handleISR();

        void setup();
        void execute();

        Click click();
        void reset();

    private:
        unsigned long m_high, m_low;

        Click m_type;

        void _process();

        void (*p_isr)(void);
};


};

#endif // BUTTON_H_INCLUDED
