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

#include "device.h"


class Button : public Device
{
    public:
        Button (int num, int pin);
        virtual ~Button();

        enum status_t {
            NONE = 0,
            CLICK = 1,
            DOUBLE_CLICK = 2,
            HOLD = 3
        };

        void setISR(void (*rising_isr)(void), void (*falling_isr)(void));
        void handleRISING();
        void handleFALLING();

        void setup();
        void execute();

        status_t status();

    private:
        int m_num, m_pin, m_counter;
        unsigned long m_start, m_end;

        status_t m_status;
        void (*p_rising)(void);
        void (*p_falling)(void);
};

#endif // BUTTON_H_INCLUDED
