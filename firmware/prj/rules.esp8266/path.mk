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


ESP8266_ROOT    = /home/kai/.arduino15/packages/esp8266
ESP8266_GCC     = xtensa-lx106-elf
ESP8266_XTENSA  = 2.5.0-4-b40a506
ESP8266_VERSION = 2.6.1


TOOLS             = $(ESP8266_PATH)/hardware/esp8266/$(ESP_VERSION)/tools

ESP8266_ROOT      = $(ESP8266_PATH)/tools/xtensa-lx106-elf-gcc/$(XTENSA)


ESP8266_BIN       = $(ESP8266_ROOT)/bin
ESP8266_SDK       = $(TOOLS)/sdk
ESP8266_INCLUDE_SDK       = -I$(ESP8266_SDK)/include -I$(ESP8266_SDK)/lwip2/include -I$(ESP8266_SDK)/libc/xtensa-lx106-elf/include
ESP8266_LIB               = 


# Normalized Paths
GCC_BIN = $(ESP32_BIN)
LD_PATH = -L$(ESP8266_SDK)/lib -L$(ESP8266_SDK)/lib/NONOSDK221 -L$(ESP8266_SDK)/ld -L$(ESP8266_SDK)/libc/xtensa-lx106-elf/lib

PATH_CORES     = $(ESP32_HW)/cores
PATH_VARIANTS  = $(ESP32_HW)/variants
PATH_LIBRARIES = $(ESP32_HW)/libraries

PATH_WIFI      = $(PATH_LIBRARIES)/WiFi/src
PATH_SPI       = $(PATH_LIBRARIES)/SPI/src
PATH_EEPROM    = $(PATH_LIBRARIES)/EEPROM/src
PATH_CRC32     = $(ARDUINO)/CRC32/src

