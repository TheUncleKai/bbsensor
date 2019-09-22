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

#ifndef CONFIG_H_INCLUDED
#define CONFIG_H_INCLUDED

#define PIN_LED    2  // D4,  internal LED
#define PIN_LED1   16 // D0,  external LED1
#define PIN_LED2   5  // D1,  external LED2

#define PIN_BUTTON 4  // D2,  push button
#define PIN_CS1    3  // D9,  SPI chip select 1
#define PIN_CS2    1  // D10, SPI chip select 2

#define PIN_SCLK   14 // D5,  SPI clock
#define PIN_MISO   12 // D6,  SPI MISO
#define PIN_MOSI   13 // D7,  SPI MOSI
#define PIN_NONE   15 // D8,  SPI CS, not used

#define CLICK_THRESHOLD 20
#define CLICK_SINGLE    150
#define CLICK_DOUBLE    300
#define CLICK_HOLD      3000

#define LOOP_WAIT 100

#endif // CONFIG_H_INCLUDED
