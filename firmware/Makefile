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

ROOT = .

include $(ROOT)/rules/config.mk
include $(ROOT)/rules/setup.mk

default: link


help:
	@$(ECHO) "\n\e[1;34mTargets for makefile\e[0;0m\n"
	@$(ECHO) "\t\e[1;34minfo\e[0;0m:\t\tinfo about enviroments"
	@$(ECHO) "\t\e[1;34mcompile\e[0;0m:\tcompiles libs and firmware"
	@$(ECHO) "\t\e[1;34mlink\e[0;0m:\t\tlink firmware"
	@$(ECHO) "\t\e[1;34mupload\e[0;0m:\t\tupload firmware"
	@$(ECHO) "\t\e[1;34mclean\e[0;0m:\t\tcleanup output"


info:
	@$(LOG) "ESP8266: $(ESP8266_PATH)"
	@$(LOG) "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-"
	@$(LOG) "Prefix:   $(ESP8266_GCC_PREFIX)"
	@$(LOG) "Root:     $(ESP8266_ROOT)"
	@$(LOG) "Bin:      $(ESP8266_BIN)"
	@$(LOG) "SDK:      $(ESP8266_SDK)"
	@$(LOG) "Variants: $(ESP8266_VARIANTS)"
	@$(LOG) "Tools:    $(TOOLS)"
	@$(LOG) "Port:     $(PORT)"
	@$(LOG) "Baud:     $(BAUD)"
	@$(LOG) "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-"
	@$(LOG) "Make directory:   $(MKDIR)"
	@$(LOG) "Remove file:      $(RM)"
	@$(LOG) "Remove directory: $(RMDIR)"
	@$(LOG) "Python:           $(PYTHON)"
	@$(LOG) "Copy file:        $(COPY)"
	@$(LOG) "Log file:         $(LOGFILE)"
	@$(LOG) "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-"
	@$(LOG) "Include SDK:     $(ESP8266_INCLUDE_SDK)"
	@$(LOG) "Iclude Core:     $(ESP8266_INCLUDE_CORE)"
	@$(LOG) "Iclude Variants: $(ESP8266_INCLUDE_VARIANTS)"

clean:
	@@$(RM) $(LOGFILE)
	@$(INFORM) "Clean $(LIBCORE)"
	@$(MAKE) -s -C ext/core -f Makefile clean
	@$(INFORM) "Clean $(LIBSPI)"
	@$(MAKE) -s -C ext/spi -f Makefile clean
	@$(INFORM) "Clean $(LIBEEPROM)"
	@$(MAKE) -s -C ext/eeprom -f Makefile clean
	@$(INFORM) "Clean $(APP)"
	@$(MAKE) -s -C src -f Makefile clean
	@-$(RMDIR) $(OUTPUT)

# =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
# ESP8266 Core

compile_core:
	@$(MKDIR) $(OUTPUT)
	@$(INFORM) "Compile $(LIBCORE)"
	@$(MAKE) -s -C ext/core -f Makefile compile

link_core: compile_core
	@$(MKDIR) $(OUTPUT)
	@$(INFORM) "Link $(LIBCORE)"
	@$(MAKE) -s -C ext/core -f Makefile link

# =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
# ESP8266 SPI

compile_spi:
	@$(MKDIR) $(OUTPUT)
	@$(INFORM) "Compile $(LIBSPI)"
	@$(MAKE) -s -C ext/spi -f Makefile compile

link_spi: compile_spi
	@$(MKDIR) $(OUTPUT)
	@$(INFORM) "Link $(LIBSPI)"
	@$(MAKE) -s -C ext/spi -f Makefile link

# =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
# EEPROM

compile_eeprom:
	@$(MKDIR) $(OUTPUT)
	@$(INFORM) "Compile $(LIBEEPROM)"
	@$(MAKE) -s -C ext/eeprom -f Makefile compile

link_eeprom: compile_eeprom
	@$(MKDIR) $(OUTPUT)
	@$(INFORM) "Link $(LIBEEPROM)"
	@$(MAKE) -s -C ext/eeprom -f Makefile link

# =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
# ESP8266WIFI

compile_wifi:
	@$(MKDIR) $(OUTPUT)
	@$(INFORM) "Compile $(LIBESP8266WIFI)"
	@$(MAKE) -s -C ext/esp8266wifi -f Makefile compile

link_wifi: compile_wifi
	@$(MKDIR) $(OUTPUT)
	@$(INFORM) "Link $(LIBESP8266WIFI)"
	@$(MAKE) -s -C ext/esp8266wifi -f Makefile link

# =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
# Projects

compile:
	@$(MKDIR) $(OUTPUT)
	@$(INFORM) "Create deps"
	@$(MAKE) -s -C src -f Makefile deps
	@$(INFORM) "Compile $(APP)"
	@$(MAKE) -s -C src -f Makefile compile

link: link_core link_spi link_eeprom link_wifi compile
	@$(MKDIR) $(OUTPUT)
	@$(INFORM) "Link $(APP)"
	@$(MAKE) -s -C src -f Makefile link


upload: link
	@$(INFORM) "Upload firmware"
	@$(MAKE) -s -C src -f Makefile upload


.PHONY: default help info clean compile_core link_core compile_spi link_spi compile_eeprom link_eeprom compile link upload
