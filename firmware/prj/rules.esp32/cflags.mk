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
    -DESP_PLATFORM \
    "-DMBEDTLS_CONFIG_FILE=\"mbedtls/esp_config.h\"" \
    -DHAVE_CONFIG_H \
    -DGCC_NOT_5_2_0=0 \
    -DWITH_POSIX \
    $(INCLUDES) \
    -std=gnu99 -Os -g3 \
    -fstack-protector \
    -ffunction-sections \
    -fdata-sections \
    -fstrict-volatile-bitfields \
    -mlongcalls \
    -nostdlib \
    -Wpointer-arith \
    -Wno-maybe-uninitialized \
    -Wno-unused-function \
    -Wno-unused-but-set-variable \
    -Wno-unused-variable \
    -Wno-deprecated-declarations \
    -Wno-unused-parameter \
    -Wno-sign-compare \
    -Wno-old-style-declaration \
    -MMD -c \
    -DF_CPU=240000000L \
    -DARDUINO=10810 \
    -DARDUINO_ESP32_DEV \
    -DARDUINO_ARCH_ESP32 \
    "-DARDUINO_BOARD=\"ESP32_DEV\"" \
    "-DARDUINO_VARIANT=\"esp32\"" \
    -DESP32 \
    $(CFLAGS_DEBUG)
