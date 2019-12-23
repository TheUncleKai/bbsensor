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

#include <EEPROM.h>

#include <device.h>

#define MAX_DEVICES 32


class Hardware
{
    public:
        Hardware();
        virtual ~Hardware();

        void add_device(Device* device);

        void setup();
        void execute();

    private:
        size_t m_counter;
};

#endif // HARDWARE_H_INCLUDED
