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

#include <settings.h>
#include <debug.h>

#include <hardware.h>


Hardware::Hardware()
{
    this->p_led1 = new LED(1, PIN_LED1);
    this->p_button1 = new Button(1, PIN_BUTTON1);
    this->p_button2 = new Button(2, PIN_BUTTON2);
    this->p_transfer = new Transfer();
//    this->p_eeprom = new EEPROMClass();
//    this->p_display = new Display(this->p_spi, PIN_CS1);
//    this->p_temperature = new Temperature(this->p_eeprom, this->p_spi, PIN_CS2);
}


Hardware::~Hardware()
{
    delete this->p_led1;
    delete this->p_button1;
    delete this->p_button2;
    delete this->p_transfer;
//    delete this->p_display;
//    delete this->p_temperature;
//    delete this->p_eeprom;
}


LED* Hardware::led1() {
    return this->p_led1;
}


Button* Hardware::button1()
{
    return this->p_button1;
}


Button* Hardware::button2()
{
    return this->p_button2;
}


Display* Hardware::display()
{
    return this->p_display;
}


EEPROMClass* Hardware::eeprom()
{
    return this->p_eeprom;
}


Transfer* Hardware::transfer()
{
    return this->p_transfer;
}


void Hardware::setup()
{
//    this->p_eeprom->begin(512);
//    this->p_spi->begin();

    this->p_led1->setup();
    this->p_button1->setup();
    this->p_button2->setup();
    this->p_transfer->setup();
//    this->p_display->setup();
//    this->p_temperature->setup();
}


void Hardware::execute()
{
    this->p_led1->execute();
    this->p_button1->execute();
    this->p_button2->execute();
    this->p_transfer->execute();
//    this->p_display->execute();
//    this->p_temperature->execute();
}
