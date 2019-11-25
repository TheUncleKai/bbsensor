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

CFLAGS_DEBUG = -DDEBUG_ESP_PORT=Serial
# CFLAGS_DEBUG = 

CFLAGS = \
	-D__ets__ -DICACHE_FLASH -U__STRICT_ANSI__ \
	$(ESP8266_INCLUDE_SDK) $(ADD_INCLUDE) \
	-c -Os -g -mlongcalls -mtext-section-literals \
	-fno-rtti -falign-functions=4 -std=c++11 -MMD -ffunction-sections -fdata-sections -fno-exceptions \
	-DNONOSDK221=1 \
	-DF_CPU=80000000L \
	-DLWIP_OPEN_SRC \
	-DTCP_MSS=536 \
	-DLWIP_FEATURES=1 \
	-DLWIP_IPV6=0 \
	$(CFLAGS_DEBUG) \
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
	$(ESP8266_INCLUDE_WIFI) \
	$(ESP8266_INCLUDE_WEBSERVER) \
	$(ESP8266_INCLUDE_MDNS) \
	$(ESP8266_INCLUDE_SERIAL)

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
	$(CFLAGS_DEBUG) \
	-DARDUINO=10809 \
	-DARDUINO_ESP8266_NODEMCU \
	-DARDUINO_ARCH_ESP8266 \
	-DARDUINO_BOARD=\"ESP8266_NODEMCU\" \
	-DFLASHMODE_DIO -DESP8266 \
	$(ESP8266_INCLUDE_CORE) \
	$(ESP8266_INCLUDE_VARIANTS)

LDFLAGS = \
	-fno-exceptions -Wl,-Map "-Wl,$(MAP)" -g -Os -nostdlib -Wl,--no-check-sections -u app_entry -u _printf_float -u _scanf_float \
	-Wl,-static -L$(ESP8266_SDK)/lib -L$(ESP8266_SDK)/lib/NONOSDK221 -L$(ESP8266_SDK)/ld -L$(ESP8266_SDK)/libc/xtensa-lx106-elf/lib -L$(ROOT)/$(OUTPUT) \
	-Teagle.flash.4m1m.ld -Wl,--gc-sections -Wl,-wrap,system_restart_local -Wl,-wrap,spi_flash_read

LDLIBS = \
	-lhal -lphy -lpp -lnet80211 -llwip2-536-feat -lwpa -lcrypto -lmain -lwps -lbearssl \
	-laxtls -lespnow -lsmartconfig -lairkiss -lwpa2 -lstdc++ -lm -lc -lgcc

UPLOADFLAGS = \
	--chip $(CHIP) --port $(PORT) --baud $(BAUD) --trace write_flash 0x0

