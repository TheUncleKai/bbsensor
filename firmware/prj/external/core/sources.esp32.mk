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

SOURCES_CORE_C = \
    $(SRCDIR)/esp32-hal-adc.c \
    $(SRCDIR)/esp32-hal-dac.c \
    $(SRCDIR)/esp32-hal-bt.c \
    $(SRCDIR)/esp32-hal-cpu.c \
    $(SRCDIR)/esp32-hal-gpio.c \
    $(SRCDIR)/esp32-hal-i2c.c \
    $(SRCDIR)/esp32-hal-ledc.c \
    $(SRCDIR)/esp32-hal-matrix.c \
    $(SRCDIR)/esp32-hal-misc.c \
    $(SRCDIR)/esp32-hal-psram.c \
    $(SRCDIR)/esp32-hal-rmt.c \
    $(SRCDIR)/esp32-hal-sigmadelta.c \
    $(SRCDIR)/esp32-hal-spi.c \
    $(SRCDIR)/esp32-hal-time.c \
    $(SRCDIR)/esp32-hal-timer.c \
    $(SRCDIR)/esp32-hal-touch.c \
    $(SRCDIR)/esp32-hal-uart.c \
    $(SRCDIR)/stdlib_noniso.c \
    $(SRCDIR)/wiring_pulse.c \
    $(SRCDIR)/wiring_shift.c

SOURCES_CORE_LIBB64_C = \
    $(SRCDIR)/libb64/cdecode.c \
    $(SRCDIR)/libb64/cencode.c

SOURCES_CORE_CPP = \
    $(SRCDIR)/FunctionalInterrupt.cpp \
    $(SRCDIR)/Esp.cpp \
    $(SRCDIR)/IPAddress.cpp \
    $(SRCDIR)/HardwareSerial.cpp \
    $(SRCDIR)/IPv6Address.cpp \
    $(SRCDIR)/MD5Builder.cpp \
    $(SRCDIR)/Print.cpp \
    $(SRCDIR)/Stream.cpp \
    $(SRCDIR)/StreamString.cpp \
    $(SRCDIR)/WMath.cpp \
    $(SRCDIR)/WString.cpp \
    $(SRCDIR)/base64.cpp \
    $(SRCDIR)/cbuf.cpp \
    $(SRCDIR)/main.cpp

