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

#ifndef DATA_H_INCLUDED
#define DATA_H_INCLUDED

#include "device.h"
#include "led.h"


class Devices : public Device
{
    public:
        Devices();
        virtual ~Devices();

        LED* led1();
        LED* led2();

        void setup();
        void execute();

    protected:

    private:
        LED* p_led1;
        LED* p_led2;
};

#endif // DATA_H_INCLUDED
