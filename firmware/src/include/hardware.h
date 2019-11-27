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

#ifndef HARDWARE_H_INCLUDED
#define HARDWARE_H_INCLUDED

#include <Arduino.h>
#include <EEPROM.h>

#include <device.h>
#include <led.h>
#include <button.h>
#include <display.h>
#include <temperature.h>


class Hardware : public Device
{
    public:
        Hardware();
        virtual ~Hardware();

        SPIClass* spi();
        LED* led1();

        Button* button1();
        Button* button2();
        Display::Manager* display();
        Temperature::Manager* temperature();

        void setup();
        void execute();

    protected:

    private:
        SPIClass* p_spi;
        LED* p_led1;

        Button* p_button1;
        Button* p_button2;
        Display::Manager* p_display;
        Temperature::Manager* p_temperature;
};

#endif // HARDWARE_H_INCLUDED
