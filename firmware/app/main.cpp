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

#include <hardware.h>
#include <temperature.h>
#include <channel.h>
#include <control.h>
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


Click::Type button1 = Click::Type::NONE;
Click::Type button2 = Click::Type::NONE;

Hardware* hw = new Hardware();
Config::Manager* config = new Config::Manager();
Control::Manager* control = new Control::Manager();


// Implemnatation
// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=


void handleISR1()
{
    hw->button1()->handleISR();
}


void handleISR2()
{
    hw->button2()->handleISR();
}


// print current value of channel on display
void print_channel()
{
    Temperature::Channel* channel = hw->temperature()->current();

    if (channel == NULL)
        return;

    if (channel->type() == Temperature::Type::NONE)
        return;

    hw->display()->clear(2);

    if (channel->type() == Temperature::Type::DATA) {
        hw->display()->write(2, "%u: %u", channel->channel(), channel->value()->data);
    }

    if (channel->type() != Temperature::Type::DATA) {
        hw->display()->write(2, "%u: %5.3f", channel->channel(), channel->value()->value);
    }
}


// setup ESP
void setup()
{
    Serial.begin(115200);
    delay(3000);

    hw->button1()->setISR(handleISR1);
    hw->button2()->setISR(handleISR2);

    // setup and read config
    config->setup();
    config->read();

    // check config, set default config if invalid
    if (config->verify() == false) {
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
        hw->temperature()->set_channel(i, config->get_channel(i));
    }

    // setup loop counter
    // 0: for LED
    // 1: Measurement delay
    // 2: delay between display writes and toggles
    control->set_counter(0, 10);
    control->set_counter(1, config->data()->measure_delay);
    control->set_counter(2, 100);
    control->setup();

    hw->display()->write(1, "Start...");
    hw->display()->execute();
    hw->setup();
}


void loop()
{
    // start loop
    control->start();

    // don't measure until loop measurement delay is reached
    hw->temperature()->set_measure(false);

    // get last click from butons
    button1 = hw->button1()->get_click();
    button2 = hw->button2()->get_click();

    // parse click only after measurement has started
    if (control->is_active() == true) {

        // toggle channel and print value when single click on button 1 is registered
        // also reset delay between display writes and toggles
        if (button1 == Click::Type::SINGLE) {
            hw->temperature()->next();
            print_channel();
            control->reset_counter(2);
        }

        if (button2 == Click::Type::SINGLE) {
            hw->temperature()->last();
            print_channel();
            control->reset_counter(2);
        }
    }

    // first loop, siwtch on led and get first measurement to setup reading
    if (control->counter() == 0) {
        hw->led1()->on();
        hw->temperature()->set_measure(true);
    }

    // now we start measurement truly
    if (control->counter() == 10) {
        hw->display()->clear();
        hw->display()->write(1, "Measure");

        control->activate();
        hw->temperature()->set_measure(true);
    }

    // toggle LED every 10 cycles
    if (control->number(0) == 10) {
        hw->led1()->toggle();
    }

    // toggle display and channel every 100 cycles
    if (control->number(2) == 100) {
        hw->temperature()->next();
        print_channel();
    }

    // measure after configured delay
    if (control->number(1) == config->data()->measure_delay) {
        hw->temperature()->set_measure(true);
    }

    // execute all tasks
    hw->execute();

    // finish loop
    control->finish();
}
