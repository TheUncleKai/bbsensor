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

#define PIN_LED1        16 // D0, internal LED1

#define PIN_BUTTON1     4  // D2, push button 1
#define PIN_BUTTON2     5  // D1, push button 2
#define PIN_CS1         2  // D4, SPI chip select 1, Display
#define PIN_CS2         15 // D8, SPI chip select 2, Temperature

#define PIN_SCLK        14 // D5, SPI clock
#define PIN_MISO        12 // D6, SPI MISO
#define PIN_MOSI        13 // D7, SPI MOSI
#define PIN_NONE        0  // D3, SPI CS, not used

#define CLICK_THRESHOLD 20
#define CLICK_SINGLE    800
#define CLICK_DOUBLE    500
#define CLICK_HOLD      2000

#define TEMP_CHANNELS   8
#define TEMP_ARRAY      120
#define TEMP_LIMIT      4095 // max value of adc, everything above is suspect

#define LOOP_WAIT       100

#define WLAN_SSID       32
#define WLAN_PASS       64

#define DEFAULT_DELAY   120

#define SPI_MAX         32
#define CONTROL_SLOTS   3

#ifdef DEBUG_SERIAL
#define DEBUG_MSG(...) DEBUG_SERIAL.printf( __VA_ARGS__ )
#else
#define DEBUG_MSG(...)
#endif // DEBUG_SERIAL

#endif // CONFIG_H_INCLUDED
