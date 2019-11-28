# Copyright (C) 2019, Kai Raphahn
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

LIBCORE             = libcore
LIBSPI              = libspi
LIBEEPROM           = libeeprom
LIBESP8266WIFI      = libESP8266WiFi
LIBESP8266WEBSERVER = libESP8266WebServer
LIBESP8266MDNS      = libESP8266mDNS
LIBSOFTWARESERIAL   = libSoftwareSerial
LIBCRC32            = libcrc32

ESP8266_CORE      = $(ESP8266_PATH)/hardware/esp8266/$(ESP_VERSION)/cores/esp8266
ESP8266_VARIANTS  = $(ESP8266_PATH)/hardware/esp8266/$(ESP_VERSION)/variants/nodemcu
ESP8266_SPI       = $(ESP8266_PATH)/hardware/esp8266/$(ESP_VERSION)/libraries/SPI
ESP8266_EEPROM    = $(ESP8266_PATH)/hardware/esp8266/$(ESP_VERSION)/libraries/EEPROM
ESP8266_WIFI      = $(ESP8266_PATH)/hardware/esp8266/$(ESP_VERSION)/libraries/ESP8266WiFi/src
ESP8266_WEBSERVER = $(ESP8266_PATH)/hardware/esp8266/$(ESP_VERSION)/libraries/ESP8266WebServer/src
ESP8266_MDNS      = $(ESP8266_PATH)/hardware/esp8266/$(ESP_VERSION)/libraries/ESP8266mDNS/src
ESP8266_SERIAL    = $(ESP8266_PATH)/hardware/esp8266/$(ESP_VERSION)/libraries/SoftwareSerial/src

ESP8266_INCLUDE_CORE      = -I$(ESP8266_CORE)
ESP8266_INCLUDE_VARIANTS  = -I$(ESP8266_VARIANTS)
ESP8266_INCLUDE_SPI       = -I$(ESP8266_SPI)
ESP8266_INCLUDE_EEPROM    = -I$(ESP8266_EEPROM)
ESP8266_INCLUDE_WIFI      = -I$(ESP8266_WIFI)
ESP8266_INCLUDE_WEBSERVER = -I$(ESP8266_WEBSERVER) -I$(ESP8266_WEBSERVER)/detail
ESP8266_INCLUDE_MDNS      = -I$(ESP8266_MDNS)
ESP8266_INCLUDE_SERIAL    = -I$(ESP8266_SERIAL)

EXT_CRC32         = $(LIBRARIES)/CRC32/src
EXT_INCLUDE_CRC32 = -I$(LIBRARIES)/CRC32/src
