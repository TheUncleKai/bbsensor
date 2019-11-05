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
//#include <ESP8266WiFi.h>
#include <SPI.h>

#include <settings.h>
#include <debug.h>

#include <hardware.h>
#include <loop.h>

#include <list>

// Name and password of the access point
//#define SSID "Pussycat"
//#define PASSWORD "supersecret"

void setup();
void loop();

Hardware* hardware = new Hardware();
Display* display = hardware->display();
Loop* looper = new Loop();


void handleISR1()
{
    hardware->button1()->handleISR();
}


void handleISR2()
{
    hardware->button2()->handleISR();
}


void setup()
{
    Serial.begin(115200);
    delay(3000);

    looper->set_numer(10);
    looper->setup();
    hardware->button1()->setISR(handleISR1);
    hardware->button2()->setISR(handleISR2);
    hardware->setup();

    // Use an external AP
    // WiFi.mode(WIFI_STA);
    // WiFi.begin(SSID, PASSWORD);
}


void loop()
{
    looper->start();

    if (looper->counter() == 0) {
        hardware->led1()->on();
    }

    if (looper->counter() == 20) {
        hardware->display()->clear();
        hardware->display()->write("TEST2", 1);
    }

    if (looper->counter() == 60) {
        hardware->display()->write("Hitachi", 2);
    }

    if (looper->number() == 10) {
        hardware->led1()->toggle();
    }

    hardware->execute();
    looper->finish();
}
