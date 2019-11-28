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

SRCDIR := 
OBJDIR := $(ROOT)/$(OUTPUT)/sensor
FOLDER := $(ROOT)/$(OUTPUT)/sensor
ADD_DEP := local.eagle.app.v6.common.ld
ADD_INCLUDE := -I../ext/core $(EXT_INCLUDE_CRC32) -I.
ADD_LIBS = -lcore -lspi -leeprom -lESP8266WiFi -lcrc32

TARGET := $(ROOT)/$(OUTPUT)/$(APP).elf
BIN := $(ROOT)/$(OUTPUT)/$(APP).bin
MAP := $(ROOT)/$(OUTPUT)/$(APP).map
SIZES := $(ROOT)/$(OUTPUT)/$(APP).txt

