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

#ifndef DEVICE_H_INCLUDED
#define DEVICE_H_INCLUDED

#include <Arduino.h>

#include <spi_wrapper.h>


class Device
{
    public:
        Device ();
        Device (SPIClass* spi, uint8_t cs);
        Device (SPIClass* spi, uint8_t cs, uint8_t pin);
        Device (uint8_t num, uint8_t pin);
        ~Device();

        virtual void setup();
        virtual void execute();

        SPIWrapper* spi();
        uint8_t number();
        uint8_t pin();


    private:
        SPIWrapper* p_spi;
        uint8_t m_num;
        uint8_t m_pin;

};


#endif // DEVICE_H_INCLUDED
