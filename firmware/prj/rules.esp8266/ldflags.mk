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

LDFLAGS = \
	-fno-exceptions \
    -Wl,-Map "-Wl,$(TARGET_MAP)" \
    -g -Os -nostdlib \
    -Wl,--no-check-sections \
    -u app_entry \
    -u _printf_float \
    -u _scanf_float \
	-Wl,-static \
    -L$(PATH_SDK)/lib \
    -L$(PATH_SDK)/lib/NONOSDK221 \
    -L$(PATH_SDK)/ld \
    -L$(PATH_SDK)/libc/xtensa-lx106-elf/lib \
    -L$(ROOT)/$(OUTPUT) \
	-Teagle.flash.4m1m.ld \
    -Wl,--gc-sections \
    -Wl,-wrap,system_restart_local \
    -Wl,-wrap,spi_flash_read

LDLIBS = \
	-lhal -lphy -lpp -lnet80211 -llwip2-536-feat -lwpa -lcrypto -lmain -lwps -lbearssl \
	-laxtls -lespnow -lsmartconfig -lairkiss -lwpa2 -lstdc++ -lm -lc -lgcc
