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
#include <utils.h>
#include <conf.h>

#include <list>

// Name and password of the access point
//#define SSID "Pussycat"
//#define PASSWORD "supersecret"


// Declarations
// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

void handleISR1();
void handleISR2();
void print_channel();

void setup();
void loop();


// Variables
// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

bool do_measure = false;
Channel* channel = NULL;
uint8_t channel_number = 0;

Hardware* hardware = new Hardware();
Config* config = new Config();
Loop* looper = new Loop();
bool check = false;

Display* display = hardware->display();


// Implemnatation
// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=


void handleISR1()
{
    hardware->button1()->handleISR();
}


void handleISR2()
{
    hardware->button2()->handleISR();
}


void print_channel()
{
    std::string text_out;

    if (channel_number == 0) {
        channel_number = 1;
    } else {
        channel_number = 0;
    }

    channel = hardware->temperature()->get_channel(channel_number);

    if (channel->value() == NULL) {
        return;
    }

    if (channel->type() == Channel::NONE) {
        text_out = string_format("%u: %u",
            channel->number(),
            channel->value()->data);
    }

    if (channel->type() == Channel::VOLTAGE) {
        text_out = string_format("%u: %5.3f",
            channel->number(),
            channel->value()->value);
    }

    hardware->display()->write("                ", 2);
    hardware->display()->write(text_out.c_str(), 2);
}


void setup()
{
    Serial.begin(115200);
    delay(3000);

    looper->set_numer(10);
    looper->setup();
    hardware->temperature()->add_channel(Channel::VOLTAGE);
    hardware->temperature()->add_channel(Channel::VOLTAGE);
    hardware->button1()->setISR(handleISR1);
    hardware->button2()->setISR(handleISR2);

    config->setup();
    config->read();

    check = config->verify();

    if (check == false) {
        config->reset();
        config->set_wlan_ssid("test_ssid");
        config->set_wlan_pass("test_pass");
        config->write();
    }

    hardware->setup();

    config->print();


    // Use an external AP
    // WiFi.mode(WIFI_STA);
    // WiFi.begin(SSID, PASSWORD);
}


void loop()
{
    looper->start();
    hardware->temperature()->set_measure(false, 0, false);
    hardware->temperature()->set_measure(false, 1, false);

    if (looper->counter() == 0) {
        hardware->led1()->on();
    }

    if (looper->counter() == 20) {
        hardware->display()->clear();
        hardware->display()->write("Start", 1);
    }

    if (looper->counter() == 60) {
        hardware->display()->write("Measure", 1);
        do_measure = true;
    }

    if (looper->number() == 10) {
        // print_channel();

        hardware->led1()->toggle();
        hardware->temperature()->set_measure(false, 0, do_measure);
        hardware->temperature()->set_measure(false, 1, do_measure);
    }


    hardware->execute();
    looper->finish();
}
