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

CCFLAGS = \
    -DESP_PLATFORM \
    "-DMBEDTLS_CONFIG_FILE=\"mbedtls/esp_config.h\"" \
    -DHAVE_CONFIG_H \
    -DGCC_NOT_5_2_0=0 \
    -DWITH_POSIX \
    -std=gnu++11 -Os -g3 \
    -Wpointer-arith \
    -fexceptions \
    -fstack-protector \
    -ffunction-sections \
    -fdata-sections \
    -fstrict-volatile-bitfields \
    -mlongcalls -nostdlib \
    -Wno-error=maybe-uninitialized \
    -Wno-error=unused-function \
    -Wno-error=unused-but-set-variable \
    -Wno-error=unused-variable \
    -Wno-error=deprecated-declarations \
    -Wno-unused-parameter \
    -Wno-unused-but-set-parameter \
    -Wno-missing-field-initializers \
    -Wno-sign-compare \
    -fno-rtti \
    -MMD -c \
    -DF_CPU=240000000L \
    -DARDUINO=10810 \
    -DARDUINO_ESP32_DEV \
    -DARDUINO_ARCH_ESP32 \
    "-DARDUINO_BOARD=\"ESP32_DEV\"" \
    "-DARDUINO_VARIANT=\"esp32\"" \
    -DESP32 \
    -DCORE_DEBUG_LEVEL=0 \
    $(INCLUDES)
