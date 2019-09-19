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

#include "devices.h"

#include "debug.h"
#include "config.h"

Devices::Devices()
{
    p_led1 = new LED(1, LED1);
    p_led2 = new LED(2, LED2);
}


Devices::~Devices()
{
    //dtor
}


LED* Devices::led1() {
    return p_led1;
}


LED* Devices::led2() {
    return p_led2;
}


void Devices::setup()
{
    p_led1->setup();
    p_led2->setup();
}


void Devices::execute()
{
    p_led1->execute();
    p_led2->execute();
}
