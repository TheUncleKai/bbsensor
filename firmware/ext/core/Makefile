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

ROOT = ../..

include $(ROOT)/rules/config.mk
include $(ROOT)/rules/setup.mk

OBJDIR := $(ROOT)/$(OUTPUT)/$(LIBCORE)
TARGET = $(ROOT)/$(OUTPUT)/$(LIBCORE)$(LIB_SUFFIX)

include sources.mk
include flags.mk
include path.mk

default: all

help:
	@$(ECHO) "\n\e[1;34mTargets for makefile\e[0;0m\n"
	@$(ECHO) "\t\e[1;34mall\e[0;0m:\t\tcompiles and link core library"
	@$(ECHO) "\t\e[1;34mcompile\e[0;0m:\tcompile core library"
	@$(ECHO) "\t\e[1;34mlink\e[0;0m:\t\tlink core library"
	@$(ECHO) "\t\e[1;34mprepare\e[0;0m:\tprepare if needed (used currently for Code::Blocks workspace)"
	@$(ECHO) "\t\e[1;34mclean\e[0;0m:\t\tcleanup output"

compile: $(OBJS)

link: $(ARS)

all: compile link

prepare:
	@$(LOG) "Copy $(LIBCORE)"
	@$(MKDIR) libb64
	@$(MKDIR) umm_malloc
	@$(MKDIR) spiffs
	@$(COPY) $(ESP8266_CORE)/*.S .
	@$(COPY) $(ESP8266_CORE)/*.h .
	@$(COPY) $(ESP8266_CORE)/*.cpp .
	@$(COPY) $(ESP8266_CORE)/libb64/*.h libb64/
	@$(COPY) $(ESP8266_CORE)/libb64/*.cpp libb64/
	@$(COPY) $(ESP8266_CORE)/umm_malloc/*.h umm_malloc/
	@$(COPY) $(ESP8266_CORE)/umm_malloc/*.cpp umm_malloc/
	@$(COPY) $(ESP8266_CORE)/spiffs/*.h spiffs/
	@$(COPY) $(ESP8266_CORE)/spiffs/*.cpp spiffs/

cleanall: clean

clean:
	@$(RM) $(OBJDIR)/*
	@$(RM) $(TARGET)
	@-$(RMDIR) $(OBJDIR)
	@$(RM) *.S *.cpp *.h
	@$(RM) libb64/*.cpp libb64/*.h
	@$(RM) umm_malloc/*.cpp umm_malloc/*.h
	@$(RM) spiffs/*.cpp spiffs/*.h
	@-$(RMDIR) libb64
	@-$(RMDIR) umm_malloc
	@-$(RMDIR) spiffs

include rules.mk

.PHONY: default help all compile link prepare clean cleanall
