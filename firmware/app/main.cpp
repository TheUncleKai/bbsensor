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
#include <dout.h>
#include <button.h>
#include <display.h>
#include <temperature.h>

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


// Manager
Config::Manager* config = new Config::Manager();
Loop* looper = new Loop();
SPIClass* spi = new SPIClass();


// Devices
DOut* led1 = new DOut(1, PIN_LED1);
Button::Manager* button1 = new Button::Manager(1, PIN_BUTTON1);
Button::Manager* button2 = new Button::Manager(2, PIN_BUTTON2);
Display* display = new Display(spi, PIN_CS1, PIN_DISPLAY);
Temperature::Manager* temperature = new Temperature::Manager(spi, PIN_CS2);


// Variables
Button::Click click1 = Button::Click::NONE;
Button::Click click2 = Button::Click::NONE;


// Implemnatation

void handleISR1()
{
    button1->handleISR();
}


void handleISR2()
{
    button2->handleISR();
}


void print_channel()
{
    Temperature::Channel* channel = temperature->current();

    if (channel->type == Temperature::Type::NONE) {
        return;
    }

    if (channel->type == Temperature::Type::DATA) {
        display->write(2, "%u: %u", channel->num, channel->data);
    }

    if (channel->type == Temperature::Type::VOLTAGE) {
        display->write(2, "%u: %5.3f V", channel->num, channel->value);
    }

    if (channel->type == Temperature::Type::RTD) {
        display->write(2, "%u: %5.3f C", channel->num, channel->value);
    }

    if (channel->type == Temperature::Type::PTC10) {
        display->write(2, "%u: %5.3f C", channel->num, channel->value);
    }

    if (channel->type == Temperature::Type::PTC100) {
        display->write(2, "%u: %5.3f C", channel->num, channel->value);
    }
}


void setup()
{
    Serial.begin(115200);
    delay(3000);

    looper->add_device(led1);
    looper->add_device(button1);
    looper->add_device(button2);
    looper->add_device(display);
    looper->add_device(temperature);

    button1->setISR(handleISR1);
    button2->setISR(handleISR2);

    config->setup();
    config->read();

    bool check = config->verify();

    if (check == false) {
        config->reset();
        config->set_channel(0, (uint8_t)Temperature::Type::RTD);
        config->set_channel(1, (uint8_t)Temperature::Type::PTC10);
        config->set_channel(2, (uint8_t)Temperature::Type::PTC100);
        config->set_delay(20);
        config->set_wlan(0, "TEST-SSID", "TEST-PASS");
        config->write();
    }

    config->print();

    for (int i = 0; i < TEMP_CHANNELS; ++i) {
        temperature->add_channel(i, (Temperature::Type)config->get_channel(i));
    }

    DEBUG_MSG("SPI: SCLK %d, MISO %d, MOSI %d\n", PIN_SCLK, PIN_MISO, PIN_MOSI);


#ifdef ESP32
    spi->begin(PIN_SCLK, PIN_MISO, PIN_MOSI, PIN_NONE);
#else
    spi->pins(PIN_SCLK, PIN_MISO, PIN_MOSI, PIN_NONE);
    spi->begin();
#endif // ESP32

    looper->set_counter(0, 10);
    looper->set_counter(1, config->data()->measure_delay);
    looper->set_counter(2, 100);
    looper->setup();
}


void loop()
{
    looper->start_loop();
    temperature->set_measure(false);

    click1 = button1->click();
    click2 = button2->click();

    if (click1 == Button::Click::SINGLE) {
        temperature->next();
        print_channel();
        looper->reset_counter(2);
        button1->reset();
    }

    if (click2 == Button::Click::SINGLE) {
        temperature->prev();
        print_channel();
        looper->reset_counter(2);
        button2->reset();
    }


    if (looper->counter() == 0) {
        led1->on();
    }

    if (looper->counter() == 10) {
        display->clear();
        display->write(1, "Start");
        temperature->set_measure(true);
    }

    if (looper->counter() == 20) {
        display->write(1, "Measure");

        looper->activate();
        temperature->set_measure(true);
    }

    if (looper->counter() == 30) {
        print_channel();
    }

    if (looper->number(0) == 10) {
        led1->toggle();
    }

    if (looper->number(2) == 100) {
        temperature->next();
        print_channel();
    }

    if (looper->number(1) == config->data()->measure_delay) {
        temperature->set_measure(true);
    }

    looper->end_loop();
}
