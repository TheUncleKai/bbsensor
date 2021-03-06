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

#ifdef ESP32
#define PIN_LED1        2  // internal LED1
#define PIN_DISPLAY     15 // display switch
#define PIN_BUTTON1     23 // push button 1
#define PIN_BUTTON2     22 // push button 2
#define PIN_CS1         21 // SPI chip select 1, Display
#define PIN_CS2         4  // SPI chip select 2, Temperature

#define PIN_SCLK        19 // SPI clock
#define PIN_MISO        18 // SPI MISO
#define PIN_MOSI        5  // SPI MOSI
#define PIN_NONE        14 // SPI CS, not used
#endif // ESP32

#ifdef ESP8266
#define PIN_LED1        16 // D0, internal LED1
#define PIN_BUTTON1     4  // D2, push button 1
#define PIN_BUTTON2     5  // D1, push button 2
#define PIN_CS1         2  // D4, SPI chip select 1, Display
#define PIN_CS2         15 // D8, SPI chip select 2, Temperature

#define PIN_SCLK        14 // D5, SPI clock
#define PIN_MISO        12 // D6, SPI MISO
#define PIN_MOSI        13 // D7, SPI MOSI
#define PIN_NONE        0  // D3, SPI CS, not used
#endif // ESP8266

#define DISPLAY_DIGITS  16

#define CLICK_SINGLE    50
#define CLICK_HOLD      3000

#define TEMP_CHANNELS   8
#define TEMP_ARRAY      240
#define TEMP_LIMIT      4095 // max value of adc, everything above is suspect

#define LOOP_WAIT       100

#define WLAN_SSID       32
#define WLAN_PASS       64

#define DEFAULT_DELAY   120
#define CHANNEL_LOOPS   8

#ifdef DEBUG_ESP_PORT
#define DEBUG_MSG(...) DEBUG_ESP_PORT.printf( __VA_ARGS__ )
#endif // DEBUG_ESP_PORT

#ifdef DEBUG_ESP32_PORT
#define DEBUG_MSG(...) DEBUG_ESP32_PORT.printf( __VA_ARGS__ )
#endif // DEBUG_ESP32_PORT

#if !defined(DEBUG_ESP_PORT) && !defined(DEBUG_ESP32_PORT)
#define DEBUG_MSG(...)
#endif

#endif // CONFIG_H_INCLUDED
