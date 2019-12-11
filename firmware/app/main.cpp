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
#include <SPI.h>

#include <settings.h>
#include <hardware.h>
#include <loop.h>
#include <utils.h>
#include <conf.h>


// Declarations
// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

void handleISR1();
void handleISR2();
void print_channel();

void setup();
void loop();


// Variables
// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

Hardware* hardware = new Hardware();
Config::Manager* config = new Config::Manager();
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
    Temperature::Channel* channel = hardware->temperature()->current();

    if (channel->type == Temperature::Type::NONE) {
        return;
    }

    if (channel->type == Temperature::Type::DATA) {
        hardware->display()->write(2, "%u: %u", channel->num, channel->data);
    }

    if (channel->type == Temperature::Type::VOLTAGE) {
        hardware->display()->write(2, "%u: %5.3f", channel->num, channel->value);
    }
}


void setup()
{
    Serial.begin(115200);
    delay(3000);

    hardware->button1()->setISR(handleISR1);
    hardware->button2()->setISR(handleISR2);

    config->setup();
    config->read();

    bool check = config->verify();

    if (check == false) {
        config->reset();
        config->set_channel(0, (uint8_t)Temperature::Type::VOLTAGE);
        config->set_channel(2, (uint8_t)Temperature::Type::DATA);
        config->set_delay(300);
        config->set_wlan(0, "TEST-SSID", "TEST-PASS");
        config->write();
    }

    config->print();

    for (int i = 0; i < TEMP_CHANNELS; ++i) {
        hardware->temperature()->add_channel(i, (Temperature::Type)config->get_channel(i));
    }

    looper->set_counter(0, 10);
    looper->set_counter(1, config->data()->measure_delay);
    looper->set_counter(2, 100);
    looper->setup();


    hardware->setup();
}


void loop()
{
    looper->start();
    hardware->temperature()->set_measure(false);


    if (hardware->temperature()->get_measure() == true) {
        Button::Click button1 = hardware->button1()->click();
        Button::Click button2 = hardware->button2()->click();

        if (button1 == Button::SINGLE_CLICK) {
            hardware->temperature()->next();
            print_channel();
            looper->reset_counter(2);
            hardware->button1()->reset();
        }

        if (button2 == Button::SINGLE_CLICK) {
            hardware->temperature()->prev();
            print_channel();
            looper->reset_counter(2);
            hardware->button2()->reset();
        }
    }


    if (looper->counter() == 0) {
        hardware->led1()->on();
    }

    if (looper->counter() == 10) {
        hardware->display()->clear();
        hardware->display()->write(1, "Start");
        hardware->temperature()->set_measure(true);
    }

    if (looper->counter() == 20) {
        hardware->display()->write(1, "Measure");

        looper->activate();
        hardware->temperature()->set_measure(true);
    }

    if (looper->counter() == 30) {
        print_channel();
    }

    if (looper->number(0) == 10) {
        hardware->led1()->toggle();
    }

    if (looper->number(2) == 100) {
        hardware->temperature()->next();
        print_channel();
    }

    if (looper->number(1) == config->data()->measure_delay) {
        hardware->temperature()->set_measure(true);
    }

    hardware->execute();
    looper->finish();
}
