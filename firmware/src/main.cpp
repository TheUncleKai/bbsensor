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
#include <temperature.h>
#include <channel.h>
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

typedef struct {
    bool measure = false;
    bool check_config = false;
    Click::Type button1 = Click::Type::NONE;
    Click::Type button2 = Click::Type::NONE;
} MainState;



MainState* state = new MainState;
Hardware* hardware = new Hardware();
Config::Manager* config = new Config::Manager();

Display::Manager* display = hardware->display();
Temperature::Manager* temperature = hardware->temperature();

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


// print current value of channel on display
void print_channel()
{
    Temperature::Channel* channel = temperature->current();

    if (channel == NULL)
        return;

    if (channel->type() == Temperature::Type::NONE)
        return;

    display->clear(2);

    if (channel->type() == Temperature::Type::DATA) {
        display->write(2, "%u: %u", channel->channel(), channel->value()->data);
    }

    if (channel->type() != Temperature::Type::DATA) {
        display->write(2, "%u: %5.3f", channel->channel(), channel->value()->value);
    }
}


// setup ESP
void setup()
{
    Serial.begin(115200);
    delay(3000);

    hardware->button1()->setISR(handleISR1);
    hardware->button2()->setISR(handleISR2);

    // setup and read config
    config->setup();
    config->read();

    // check config, set default config if invalid
    state->check_config = config->verify();


    if (state->check_config == false) {
        config->reset();
        config->set_channel(0, Temperature::Type::RTD);
        config->set_channel(2, Temperature::Type::DATA);
        config->set_delay(300);
        config->set_wlan(0, "TEST-SSID", "TEST-PASS");
        config->write();
    }

    config->print();

    // set channel by config values
    for (int i = 0; i < TEMP_CHANNELS; ++i) {
        temperature->set_channel(i, config->get_channel(i));
    }

    // setup loop counter
    // 0: for LED
    // 1: Measurement delay
    // 2: delay between display writes and toggles
    looper->set_counter(0, 10);
    looper->set_counter(1, config->data()->measure_delay);
    looper->set_counter(2, 100);
    looper->setup();

    display->write(1, "Start...");
    display->execute();

    hardware->setup();
}




void loop()
{
    // start loop
    looper->start();

    // don't measure until loop measurement delay is reached
    temperature->set_measure(false);

    // get last click from butons
    state->button1 = hardware->button1()->get_click();
    state->button2 = hardware->button2()->get_click();

    // parse click only after measurement has started
    if (state->measure == true) {

        // toggle channel and print value when single click on button 1 is registered
        // also reset delay between display writes and toggles
        if (state->button1 == Click::Type::SINGLE) {
            temperature->next();
            print_channel();
            looper->reset_counter(2);
        }

        if (state->button2 == Click::Type::SINGLE) {
            temperature->last();
            print_channel();
            looper->reset_counter(2);
        }
    }

    // first loop, siwtch on led and get first measurement to setup reading
    if (looper->counter() == 0) {
        hardware->led1()->on();
        temperature->set_measure(true);
    }

    // now we start measurement truly
    if (looper->counter() == 10) {
        hardware->display()->clear();
        hardware->display()->write(1, "Measure");

        looper->activate();
        temperature->set_measure(true);
        state->measure = true;
    }

    // toggle LED every 10 cycles
    if (looper->number(0) == 10) {
        hardware->led1()->toggle();
    }

    // toggle display and channel every 100 cycles
    if (looper->number(2) == 100) {
        temperature->next();
        print_channel();
    }

    // measure after configured delay
    if (looper->number(1) == config->data()->measure_delay) {
        temperature->set_measure(true);
    }

    // execute all tasks
    hardware->execute();

    // finish loop
    looper->finish();
}
