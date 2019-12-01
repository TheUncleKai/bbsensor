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

ROOT = ..

INCLUDES = 

include $(ROOT)/prj/config.mk
include $(ROOT)/prj/board.mk
include $(ROOT)/prj/tools/log.mk

-include $(ROOT)/prj/rules.$(BOARD)/debug.mk
-include $(ROOT)/prj/rules.$(BOARD)/vars.mk
-include $(ROOT)/prj/rules.$(BOARD)/asmflags.mk
-include $(ROOT)/prj/rules.$(BOARD)/cflags.mk
-include $(ROOT)/prj/rules.$(BOARD)/ccflags.mk
-include $(ROOT)/prj/rules.$(BOARD)/ldflags.mk
-include $(ROOT)/prj/rules.$(BOARD)/upload.mk

include $(ROOT)/prj/tools/setup.mk

-include vars.mk
-include vars.$(BOARD).mk

OBJDIR := $(ROOT)/$(OUTPUT)/$(NAME)
FOLDER := $(ROOT)/$(OUTPUT)/$(NAME)

-include targets.mk
-include targets.$(BOARD).mk

-include sources.mk
-include sources.$(BOARD).mk

-include objects.mk
-include objects.$(BOARD).mk


default: compile link

help:
	@$(ECHO) "\n\e[1;34mTargets for makefile\e[0;0m\n"
	@$(ECHO) "\t\e[1;34mcompile\e[0;0m:\tcompiles libs and firmware"
	@$(ECHO) "\t\e[1;34mlink\e[0;0m:\t\tlink firmware"
	@$(ECHO) "\t\e[1;34mupload\e[0;0m:\t\tupload firmware"
	@$(ECHO) "\t\e[1;34mclean\e[0;0m:\t\tcleanup output"

deps: $(DEPS)

compile: $(OBJS)

link: $(TARGET_ELF) $(TARGET_BIN) $(TARGET_SIZE) $(TARGET_PART)

clean:
	@$(RM) -rf $(OBJDIR)/*
	@$(RM) $(TARGET_ELF) $(TARGET_BIN) $(TARGET_SIZE)

upload: $(BIN)
	@$(INFORM) "Upload $(BIN)"
	@$(LOGTIME) $(ESPTOOL) $(UPLOADFLAGS) $(TARGET_BIN) $(LOGONLY)
	@$(ESPTOOL) $(UPLOADFLAGS) $(TARGET_BIN) $(LOGOUT)

# Include global rules
include $(ROOT)/prj/tools/rules.mk

# Include local rules
-include rules.mk
-include rules.$(BOARD).mk

-include $(DEPS)

.PHONY: default help deps compile link clean upload
