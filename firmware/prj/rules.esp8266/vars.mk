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

# Board Paths
PATH_BIN       = $(ESP8266_ROOT)/tools/$(ESP8266_GCC)-gcc/$(ESP8266_XTENSA)/bin
PATH_HW        = $(ESP8266_ROOT)/hardware/esp8266/$(ESP8266_VERSION)

PATH_SDK       = $(PATH_HW)/tools/sdk
PATH_CORES     = $(PATH_HW)/cores/esp8266
PATH_VARIANTS  = $(PATH_HW)/variants/nodemcu
PATH_LIBRARIES = $(PATH_HW)/libraries

PATH_WIFI      = $(PATH_LIBRARIES)/ESP8266WiFi/src
PATH_SPI       = $(PATH_LIBRARIES)/SPI
PATH_EEPROM    = $(PATH_LIBRARIES)/EEPROM
PATH_CRC32     = $(ARDUINO)/CRC32/src
PATH_SERIAL    = $(PATH_LIBRARIES)/SoftwareSerial/src

INCLUDE_SDK = \
    -I$(PATH_SDK)/include\
    -I$(PATH_SDK)/lwip2/include \
    -I$(PATH_SDK)/libc/xtensa-lx106-elf/include

INCLUDE_CORES = \
    -I$(PATH_CORES)

INCLUDE_VARIANTS = \
    -I$(PATH_VARIANTS)

SIGNING  = $(ESP8266_ROOT)/hardware/esp8266/$(ESP8266_VERSION)/tools/signing.py
ELF2BIN  = $(ESP8266_ROOT)/hardware/esp8266/$(ESP8266_VERSION)/tools/elf2bin.py

# Normalized Paths
GCC_BIN    = $(PATH_BIN)
GCC_PREFIX = $(ESP8266_GCC)
INCLUDE    = $(INCLUDE_SDK) $(INCLUDE_CORES) $(INCLUDE_VARIANTS)

CFLAGS_DEBUG += -DCORE_DEBUG_LEVEL=0
