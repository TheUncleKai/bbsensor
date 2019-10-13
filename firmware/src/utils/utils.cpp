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
#include <debug.h>

#include <string>


void debug_binary(const char* keyword, byte data)
{
    DEBUG_MSG("%s:  %.3u  0x%.2X  %c%c%c%c% c%c%c%c\n",
        keyword,
        data,
        data,
        (data & 0x80 ? '1' : '0'),
        (data & 0x40 ? '1' : '0'),
        (data & 0x20 ? '1' : '0'),
        (data & 0x10 ? '1' : '0'),
        (data & 0x08 ? '1' : '0'),
        (data & 0x04 ? '1' : '0'),
        (data & 0x02 ? '1' : '0'),
        (data & 0x01 ? '1' : '0'));

}


void debug_display(const char* keyword, byte data, byte signal, byte pin)
{
    DEBUG_MSG("%s:  %.3u  0x%.2X  %c%c%c%c% c%c%c%c  c%c%c%c c%c%c%c  c%c%c%c c%c%c%c\n",
        keyword,
        data,
        data,
        (data & 0x80 ? '1' : '0'),
        (data & 0x40 ? '1' : '0'),
        (data & 0x20 ? '1' : '0'),
        (data & 0x10 ? '1' : '0'),
        (data & 0x08 ? '1' : '0'),
        (data & 0x04 ? '1' : '0'),
        (data & 0x02 ? '1' : '0'),
        (data & 0x01 ? '1' : '0'),
        (signal & 0x80 ? '1' : '0'),
        (signal & 0x40 ? '1' : '0'),
        (signal & 0x20 ? '1' : '0'),
        (signal & 0x10 ? '1' : '0'),
        (signal & 0x08 ? '1' : '0'),
        (signal & 0x04 ? '1' : '0'),
        (signal & 0x02 ? '1' : '0'),
        (signal & 0x01 ? '1' : '0'),
        (pin & 0x80 ? '1' : '0'),
        (pin & 0x40 ? '1' : '0'),
        (pin & 0x20 ? '1' : '0'),
        (pin & 0x10 ? '1' : '0'),
        (pin & 0x08 ? '1' : '0'),
        (pin & 0x04 ? '1' : '0'),
        (pin & 0x02 ? '1' : '0'),
        (pin & 0x01 ? '1' : '0')
    );

}
