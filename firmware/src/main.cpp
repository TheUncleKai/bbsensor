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

#include <Arduino.h>

#include "hardware.h"

#include "config.h"
#include "debug.h"

void setup();
void loop();

Hardware* hardware = new Hardware();


void setup()
{
    Serial.begin(115200);
    delay(3000);

    hardware->setup();

    DEBUG_MSG("bootup...\n");
}


void loop()
{
    DEBUG_MSG("loop %d\n", millis());
    DEBUG_MSG("Toggle on\n");

    hardware->led1()->toggle();
    hardware->led2()->toggle();

    hardware->execute();
    delay(LOOP_WAIT);
}
