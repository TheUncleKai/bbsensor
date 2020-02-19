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

#ifndef LED_H_INCLUDED
#define LED_H_INCLUDED

#include <device.h>


class DOut : public Device
{
    public:
        DOut (uint8_t num, uint8_t pin);
        virtual ~DOut();

        void toggle();
        void on();
        void off();

        void setup();
        void execute();

    private:
        uint8_t m_status;

        void _on();
        void _off();
};

#endif // LED_H_INCLUDED
