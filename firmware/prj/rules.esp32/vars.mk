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
PATH_BIN       = $(ESP32_ROOT)/tools/$(ESP32_GCC)-gcc/$(ESP32_XTENSA)/bin
PATH_HW        = $(ESP32_ROOT)/hardware/esp32/$(ESP32_VERSION)

PATH_SDK       = $(PATH_HW)/tools/sdk/include
PATH_CORES     = $(PATH_HW)/cores
PATH_VARIANTS  = $(PATH_HW)/variants
PATH_LIBRARIES = $(PATH_HW)/libraries

PATH_WIFI      = $(PATH_LIBRARIES)/WiFi/src
PATH_SPI       = $(PATH_LIBRARIES)/SPI/src
PATH_EEPROM    = $(PATH_LIBRARIES)/EEPROM/src
PATH_CRC32     = $(ARDUINO)/CRC32/src

INCLUDES_SDK = \
    -I$(PATH_SDK)/config \
    -I$(PATH_SDK)/app_trace \
    -I$(PATH_SDK)/app_update \
    -I$(PATH_SDK)/asio \
    -I$(PATH_SDK)/bootloader_support \
    -I$(PATH_SDK)/bt \
    -I$(PATH_SDK)/coap \
    -I$(PATH_SDK)/console \
    -I$(PATH_SDK)/driver \
    -I$(PATH_SDK)/esp-tls \
    -I$(PATH_SDK)/esp32 \
    -I$(PATH_SDK)/esp_adc_cal \
    -I$(PATH_SDK)/esp_event \
    -I$(PATH_SDK)/esp_http_client \
    -I$(PATH_SDK)/esp_http_server \
    -I$(PATH_SDK)/esp_https_ota \
    -I$(PATH_SDK)/esp_ringbuf \
    -I$(PATH_SDK)/ethernet \
    -I$(PATH_SDK)/expat \
    -I$(PATH_SDK)/fatfs \
    -I$(PATH_SDK)/freemodbus \
    -I$(PATH_SDK)/freertos \
    -I$(PATH_SDK)/heap \
    -I$(PATH_SDK)/idf_test \
    -I$(PATH_SDK)/jsmn \
    -I$(PATH_SDK)/json \
    -I$(PATH_SDK)/libsodium \
    -I$(PATH_SDK)/log \
    -I$(PATH_SDK)/lwip \
    -I$(PATH_SDK)/mbedtls \
    -I$(PATH_SDK)/mdns \
    -I$(PATH_SDK)/micro-ecc \
    -I$(PATH_SDK)/mqtt \
    -I$(PATH_SDK)/newlib \
    -I$(PATH_SDK)/nghttp \
    -I$(PATH_SDK)/nvs_flash \
    -I$(PATH_SDK)/openssl \
    -I$(PATH_SDK)/protobuf-c \
    -I$(PATH_SDK)/protocomm \
    -I$(PATH_SDK)/pthread \
    -I$(PATH_SDK)/sdmmc \
    -I$(PATH_SDK)/smartconfig_ack \
    -I$(PATH_SDK)/soc \
    -I$(PATH_SDK)/spi_flash \
    -I$(PATH_SDK)/spiffs \
    -I$(PATH_SDK)/tcp_transport \
    -I$(PATH_SDK)/tcpip_adapter \
    -I$(PATH_SDK)/ulp \
    -I$(PATH_SDK)/vfs \
    -I$(PATH_SDK)/wear_levelling \
    -I$(PATH_SDK)/wifi_provisioning \
    -I$(PATH_SDK)/wpa_supplicant \
    -I$(PATH_SDK)/xtensa-debug-module \
    -I$(PATH_SDK)/esp-face \
    -I$(PATH_SDK)/esp32-camera \
    -I$(PATH_SDK)/esp-face \
    -I$(PATH_SDK)/fb_gfx

INCLUDES_CORES = \
    -I$(PATH_CORES)/esp32

INCLUDES_VARIANTS = \
    -I$(PATH_VARIANTS)/esp32

# Normalized Paths
GCC_BIN  = $(PATH_BIN)
INCLUDES = $(INCLUDES_SDK) $(INCLUDES_CORES) $(INCLUDES_VARIANTS)
CFLAGS_DEBUG += -DCORE_DEBUG_LEVEL=0
