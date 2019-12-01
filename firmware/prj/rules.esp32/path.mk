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
ESP32_BIN       = $(ESP32_ROOT)/tools/$(ESP32_GCC)-gcc/$(XTENSA_VERSION)/bin
ESP32_HW        = $(ESP32_ROOT)/hardware/esp32/$(ESP32_VERSION)
ESP32_SDK       = $(ESP32_HW)/tools/sdk/include

# Normalized Paths
GCC_BIN = $(ESP32_BIN)
LD_PATH = -L$(ESP32_HW)/tools/sdk/lib -L$(ESP32_HW)/tools/sdk/ld

PATH_CORES     = $(ESP32_HW)/cores
PATH_VARIANTS  = $(ESP32_HW)/variants
PATH_LIBRARIES = $(ESP32_HW)/libraries

PATH_WIFI      = $(PATH_LIBRARIES)/WiFi/src
PATH_SPI       = $(PATH_LIBRARIES)/SPI/src
PATH_EEPROM    = $(PATH_LIBRARIES)/EEPROM/src
PATH_CRC32     = $(ARDUINO)/CRC32/src
