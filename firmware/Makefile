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
	@$(ECHO) "\t\e[1;34mcompile\e[0;0m:\tcompiles libs and firmware"
	@$(ECHO) "\t\e[1;34mlink\e[0;0m:\t\tlink firmware"
	@$(ECHO) "\t\e[1;34mupload\e[0;0m:\t\tupload firmware"
	@$(ECHO) "\t\e[1;34mclean\e[0;0m:\t\tcleanup output"

include ext/core/lib.mk
include ext/eeprom/lib.mk
include ext/esp8266mdns/lib.mk
# include ext/esp8266webserver/lib.mk
include ext/esp8266wifi/lib.mk
include ext/softwareserial/lib.mk
include ext/spi/lib.mk

# =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
# Projects

compile:
	@$(MKDIR) $(OUTPUT)
	@$(INFORM) "Create deps"
	@$(MAKE) -s -C src -f Makefile deps
	@$(INFORM) "Compile $(APP)"
	@$(MAKE) -s -C src -f Makefile compile

link: link_core link_eeprom link_mdns link_wifi link_serial link_spi
	@$(MKDIR) $(OUTPUT)
	@$(INFORM) "Link $(APP)"
	@$(MAKE) -s -C src -f Makefile link


upload: link
	@$(INFORM) "Upload firmware"
	@$(MAKE) -s -C src -f Makefile upload

clean: clean_core clean_eeprom clean_mdns clean_webserver clean_wifi clean_serial clean_spi
	@@$(RM) $(LOGFILE)
	@$(INFORM) "Clean $(APP)"
	@$(MAKE) -s -C src -f Makefile clean
	@-$(RMDIR) $(OUTPUT)

.PHONY: default help compile link upload clean compile_core compile_eeprom compile_mdns compile_webserver compile_wifi compile_serial compile_spi link_core link_eeprom link_mdns link_wifi link_serial link_spi clean_core clean_eeprom clean_mdns clean_webserver clean_wifi clean_serial clean_spi
