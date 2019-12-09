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

include $(ROOT)/prj/external/spi/lib.mk
include $(ROOT)/prj/external/eeprom/lib.mk
include $(ROOT)/prj/external/wifi/lib.mk
include $(ROOT)/prj/external/CRC32/lib.mk

NAME   := bbsensor
SRCDIR := 

ADD_INCLUDE := -I.

DEP_LIBS = \
    $(ROOT)/$(OUTPUT)/libWiFi.a \
    $(ROOT)/$(OUTPUT)/libSPI.a \
    $(ROOT)/$(OUTPUT)/libEEPROM.a \
    $(ROOT)/$(OUTPUT)/libCRC32.a \
    $(ROOT)/$(OUTPUT)/libcore.a

# python /home/kai/.arduino15/packages/esp32/tools/esptool_py/2.6.1/esptool.py --chip esp32 --port /dev/ttyUSB0 --baud 115200 --before default_reset --after hard_reset write_flash -z --flash_mode dio --flash_freq 80m --flash_size detect 0xe000 /home/kai/.arduino15/packages/esp32/hardware/esp32/1.0.4/tools/partitions/boot_app0.bin 0x1000 /home/kai/.arduino15/packages/esp32/hardware/esp32/1.0.4/tools/sdk/bin/bootloader_qio_80m.bin 0x10000 /tmp/arduino_build_386427/blink.ino.bin 0x8000 /tmp/arduino_build_386427/blink.ino.partitions.bin


UPLOAD_APP = \
    0xe000 $(PATH_HW)/tools/partitions/boot_app0.bin \
    0x1000 $(PATH_HW)/tools/sdk/bin/bootloader_dio_80m.bin \
    0x10000 $(TARGET_BIN) \
    0x8000 $(TARGET_PART)
