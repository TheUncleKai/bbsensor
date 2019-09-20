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

#include "hardware.h"

#include "debug.h"
#include "config.h"

Hardware::Hardware()
{
    this->p_led1 = new LED(1, PIN_LED1);
    this->p_led2 = new LED(2, PIN_LED2);
    this->p_spi = new SPIClass();
    this->p_button = new Button(1, PIN_BUTTON);
}


Hardware::~Hardware()
{
    //dtor
}


LED* Hardware::led1() {
    return this->p_led1;
}


LED* Hardware::led2() {
    return this->p_led2;
}


SPIClass* Hardware::spi()
{
    return this->p_spi;
}


Button* Hardware::button()
{
    return this->p_button;
}


void Hardware::setup()
{
    this->p_led1->setup();
    this->p_led2->setup();
    this->p_button->setup();
    this->p_spi->pins(PIN_SCLK, PIN_MISO, PIN_MOSI, PIN_NONE);
    this->p_spi->begin();

}


void Hardware::execute()
{
    this->p_led1->execute();
    this->p_led2->execute();
    this->p_button->execute();
}
