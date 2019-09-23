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

CFLAGS = \
	-D__ets__ -DICACHE_FLASH -U__STRICT_ANSI__ \
	$(ESP8266_INCLUDE_SDK) -I. \
	-c -Os -g -mlongcalls -mtext-section-literals \
	-fno-rtti -falign-functions=4 -std=c++11 -MMD -ffunction-sections -fdata-sections -fno-exceptions \
	-DNONOSDK221=1 \
	-DF_CPU=80000000L \
	-DLWIP_OPEN_SRC \
	-DTCP_MSS=536 \
	-DLWIP_FEATURES=1 \
	-DLWIP_IPV6=0 \
	-DDEBUG_ESP_PORT=Serial \
	-DARDUINO=10809 \
	-DARDUINO_ESP8266_NODEMCU \
	-DARDUINO_ARCH_ESP8266 \
	-DARDUINO_BOARD=\"ESP8266_NODEMCU\"\
	-DFLASHMODE_DIO \
	-DESP8266 \
	-DNO_GLOBAL_SPI \
	-DNO_GLOBAL_EEPROM \
	$(ESP8266_INCLUDE_CORE) \
	$(ESP8266_INCLUDE_VARIANTS) \
	$(ESP8266_INCLUDE_SPI) \
	$(ESP8266_INCLUDE_EEPROM) \
	$(ESP8266_INCLUDE_WIFI)

ASMFLAGS = \
	-D__ets__ -DICACHE_FLASH -U__STRICT_ANSI__ \
	$(ESP8266_INCLUDE_SDK) -I. \
	-c -g -x assembler-with-cpp -MMD -mlongcalls \
	-DNONOSDK221=1 \
	-DF_CPU=80000000L \
	-DLWIP_OPEN_SRC \
	-DTCP_MSS=536 \
	-DLWIP_FEATURES=1 \
	-DLWIP_IPV6=0 \
	-DDEBUG_ESP_PORT=Serial \
	-DARDUINO=10809 \
	-DARDUINO_ESP8266_NODEMCU \
	-DARDUINO_ARCH_ESP8266 \
	-DARDUINO_BOARD=\"ESP8266_NODEMCU\" \
	-DFLASHMODE_DIO -DESP8266 \
	$(ESP8266_INCLUDE_CORE) \
	$(ESP8266_INCLUDE_VARIANTS)
