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

ESP8266_ROOT      = $(ESP8266_PATH)/tools/xtensa-lx106-elf-gcc/$(XTENSA)
ESP8266_BIN       = $(ESP8266_ROOT)/bin
ESP8266_SDK       = $(ESP8266_PATH)/hardware/esp8266/$(ESP_VERSION)/tools/sdk
ESP8266_CORE      = $(ESP8266_PATH)/hardware/esp8266/$(ESP_VERSION)/cores/esp8266
ESP8266_VARIANTS  = $(ESP8266_PATH)/hardware/esp8266/$(ESP_VERSION)/variants/nodemcu
ESP8266_SPI       = $(ESP8266_PATH)/hardware/esp8266/$(ESP_VERSION)/libraries/SPI
ESP8266_EEPROM    = $(ESP8266_PATH)/hardware/esp8266/$(ESP_VERSION)/libraries/EEPROM
ESP8266_WIFI      = $(ESP8266_PATH)/hardware/esp8266/$(ESP_VERSION)/libraries/ESP8266WiFi/src
ESP8266_WEBSERVER = $(ESP8266_PATH)/hardware/esp8266/$(ESP_VERSION)/libraries/ESP8266WebServer/src


ESP8266_INCLUDE_SDK       = -I$(ESP8266_SDK)/include -I$(ESP8266_SDK)/lwip2/include -I$(ESP8266_SDK)/libc/xtensa-lx106-elf/include
ESP8266_INCLUDE_CORE      = -I$(ESP8266_CORE)
ESP8266_INCLUDE_VARIANTS  = -I$(ESP8266_VARIANTS)
ESP8266_INCLUDE_SPI       = -I$(ESP8266_SPI)
ESP8266_INCLUDE_EEPROM    = -I$(ESP8266_EEPROM)
ESP8266_INCLUDE_WIFI      = -I$(ESP8266_WIFI)
ESP8266_INCLUDE_WEBSERVER = -I$(ESP8266_WEBSERVER)

ESP8266_LIB               = -L$(ESP8266_SDK)/lib -L$(ESP8266_SDK)/lib/NONOSDK221 -L$(ESP8266_SDK)/ld -L$(ESP8266_SDK)/libc/xtensa-lx106-elf/lib

GCC     = $(ESP8266_BIN)/$(ESP8266_GCC_PREFIX)-gcc$(EXEEXT)
CXX     = $(ESP8266_BIN)/$(ESP8266_GCC_PREFIX)-g++$(EXEEXT)
AR      = $(ESP8266_BIN)/$(ESP8266_GCC_PREFIX)-ar$(EXEEXT)
RANLIB  = $(ESP8266_BIN)/$(ESP8266_GCC_PREFIX)-ranlib$(EXEEXT)
OBJCOPY = $(ESP8266_BIN)/$(ESP8266_GCC_PREFIX)-objcopy$(EXEEXT)
SIZE    = $(ESP8266_BIN)/$(ESP8266_GCC_PREFIX)-size$(EXEEXT)
SIGNING = $(TOOLS)/signing.py
ELF2BIN = $(TOOLS)/elf2bin.py
UPLOAD  = $(TOOLS)/upload.py

NICE_DATE = ''

LOGTIME = echo `date +%Y-%m-%d/%H:%M:%S`":"
INFORM  = $(ECHO) "\e[1;31m Info:\e[0;0m ==>\t"
LOG     = $(ECHO) "\e[1;34m       ==>\e[0;0m\t"

LOGGING    = log.txt
LIB_SUFFIX = .a
OUTPUT     = build

LIBCORE             = libcore
LIBSPI              = libspi
LIBEEPROM           = libeeprom
LIBESP8266WIFI      = libESP8266WiFi
LIBESP8266WEBSERVER = libESP8266WebServer
APP                 = sensor

LOGFILE    = $(ROOT)/$(OUTPUT)/$(LOGGING)
LOGOUT     = 2>&1 | tee -a $(LOGFILE)
LOGONLY    = >> $(LOGFILE)
