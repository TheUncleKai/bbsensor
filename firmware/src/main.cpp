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
uint8_t channel_number = 0;
bool check = false;

Hardware* hardware = new Hardware();
Config::Manager* config = new Config::Manager();

Display* display = hardware->display();
Temperature::Manager* temperature = hardware->temperature();
Temperature::Channel* channel = NULL;

Loop* looper = new Loop();


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

    channel = temperature->get_channel(channel_number);

    if (channel->value() == NULL) {
        return;
    }

    if (channel->type() == Temperature::Type::NONE) {
        text_out = string_format("%u: %u",
            channel->channel(),
            channel->value()->data);
    }

    if (channel->type() == Temperature::Type::VOLTAGE) {
        text_out = string_format("%u: %5.3f",
            channel->channel(),
            channel->value()->value);
    }

    hardware->display()->write("                ", 2);
    hardware->display()->write(text_out.c_str(), 2);
}


void setup()
{
    Serial.begin(115200);
    delay(3000);

    hardware->button1()->setISR(handleISR1);
    hardware->button2()->setISR(handleISR2);

    config->setup();
    config->read();

    check = config->verify();

    if (check == false) {
        config->reset();
        config->set_channel(0, Temperature::Type::VOLTAGE);
        config->set_channel(2, Temperature::Type::VOLTAGE);
        config->set_delay(300);
        config->set_wlan(0, "TEST-SSID", "TEST-PASS");
        config->write();
    }

    config->print();

    for (int i = 0; i < TEMP_CHANNELS; ++i) {
        temperature->add_channel(i, config->get_channel(i));
    }

    looper->set_counter(0, 10);
    looper->set_counter(1, config->data()->measure_delay);
    looper->setup();


    hardware->setup();
}


void loop()
{
    looper->start();
    temperature->set_measure(false, 0, false);
    temperature->set_measure(false, 2, false);

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

        temperature->set_measure(false, 0, do_measure);
        temperature->set_measure(false, 2, do_measure);
    }

    if (looper->number(0) == 10) {
        hardware->led1()->toggle();
    }


    if (looper->number(1) == config->data()->measure_delay) {
        temperature->set_measure(false, 0, do_measure);
        temperature->set_measure(false, 2, do_measure);
    }

    hardware->execute();
    looper->finish();
}
