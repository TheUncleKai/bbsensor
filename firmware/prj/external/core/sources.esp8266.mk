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

SOURCES_CORE_ASM = \
    $(SRCDIR)/cont.S

SOURCES_CORE_CPP = \
    $(SRCDIR)/abi.cpp \
    $(SRCDIR)/base64.cpp \
    $(SRCDIR)/cbuf.cpp \
    $(SRCDIR)/cont_util.cpp \
    $(SRCDIR)/core_esp8266_app_entry_noextra4k.cpp \
    $(SRCDIR)/core_esp8266_eboot_command.cpp \
    $(SRCDIR)/core_esp8266_features.cpp \
    $(SRCDIR)/core_esp8266_flash_utils.cpp \
    $(SRCDIR)/core_esp8266_i2s.cpp \
    $(SRCDIR)/core_esp8266_main.cpp \
    $(SRCDIR)/core_esp8266_noniso.cpp \
    $(SRCDIR)/core_esp8266_phy.cpp \
    $(SRCDIR)/core_esp8266_postmortem.cpp \
    $(SRCDIR)/core_esp8266_si2c.cpp \
    $(SRCDIR)/core_esp8266_sigma_delta.cpp \
    $(SRCDIR)/core_esp8266_spi_utils.cpp \
    $(SRCDIR)/core_esp8266_timer.cpp \
    $(SRCDIR)/core_esp8266_waveform.cpp \
    $(SRCDIR)/core_esp8266_wiring.cpp \
    $(SRCDIR)/core_esp8266_wiring_analog.cpp \
    $(SRCDIR)/core_esp8266_wiring_digital.cpp \
    $(SRCDIR)/core_esp8266_wiring_pulse.cpp \
    $(SRCDIR)/core_esp8266_wiring_pwm.cpp \
    $(SRCDIR)/core_esp8266_wiring_shift.cpp \
    $(SRCDIR)/crc32.cpp \
    $(SRCDIR)/debug.cpp \
    $(SRCDIR)/Esp.cpp \
    $(SRCDIR)/Esp-frag.cpp \
    $(SRCDIR)/Esp-version.cpp \
    $(SRCDIR)/flash_hal.cpp \
    $(SRCDIR)/FS.cpp \
    $(SRCDIR)/FSnoop.cpp \
    $(SRCDIR)/FunctionalInterrupt.cpp \
    $(SRCDIR)/gdb_hooks.cpp \
    $(SRCDIR)/HardwareSerial.cpp \
    $(SRCDIR)/heap.cpp \
    $(SRCDIR)/IPAddress.cpp \
    $(SRCDIR)/libc_replacements.cpp \
    $(SRCDIR)/MD5Builder.cpp \
    $(SRCDIR)/Print.cpp \
    $(SRCDIR)/Schedule.cpp \
    $(SRCDIR)/sntp-lwip2.cpp \
    $(SRCDIR)/spiffs_api.cpp \
    $(SRCDIR)/sqrt32.cpp \
    $(SRCDIR)/StackThunk.cpp \
    $(SRCDIR)/Stream.cpp \
    $(SRCDIR)/StreamString.cpp \
    $(SRCDIR)/time.cpp \
    $(SRCDIR)/Tone.cpp \
    $(SRCDIR)/uart.cpp \
    $(SRCDIR)/Updater.cpp \
    $(SRCDIR)/WMath.cpp \
    $(SRCDIR)/WString.cpp

SOURCES_LIBB64 = \
    $(SRCDIR)/libb64/cdecode.cpp \
    $(SRCDIR)/libb64/cencode.cpp

SOURCES_MALLOC_C = \
    $(SRCDIR)/umm_malloc/umm_info.c \
    $(SRCDIR)/umm_malloc/umm_integrity.c \
    $(SRCDIR)/umm_malloc/umm_local.c \
    $(SRCDIR)/umm_malloc/umm_poison.c

SOURCES_MALLOC = \
    $(SRCDIR)/umm_malloc/umm_malloc.cpp

SOURCES_SPIFFS = \
    $(SRCDIR)/spiffs/spiffs_cache.cpp \
    $(SRCDIR)/spiffs/spiffs_check.cpp \
    $(SRCDIR)/spiffs/spiffs_gc.cpp \
    $(SRCDIR)/spiffs/spiffs_hydrogen.cpp \
    $(SRCDIR)/spiffs/spiffs_nucleus.cpp
