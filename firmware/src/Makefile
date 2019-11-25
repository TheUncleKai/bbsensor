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

include $(ROOT)/rules/config.mk
include $(ROOT)/rules/setup.mk
include $(ROOT)/rules/libraries.mk
include $(ROOT)/rules/flags.mk

include config.mk
include sources.mk
include objects.mk

default: compile link deps

help:
	@$(ECHO) "\n\e[1;34mTargets for makefile\e[0;0m\n"
	@$(ECHO) "\t\e[1;34mcompile\e[0;0m:\tcompiles libs and firmware"
	@$(ECHO) "\t\e[1;34mlink\e[0;0m:\t\tlink firmware"
	@$(ECHO) "\t\e[1;34mupload\e[0;0m:\t\tupload firmware"
	@$(ECHO) "\t\e[1;34mclean\e[0;0m:\t\tcleanup output"

deps: $(DEPS)

compile: $(OBJS)

link: $(TARGET) $(BIN) $(SIZES)

clean:
	@$(RM) $(OBJS) $(MAP)
	@$(RM) $(ADD_DEP)
	@$(RM) $(DEPS)
	@$(RM) $(TARGET) $(BIN) $(SIZES)
	@-$(RMDIR) -rf $(OBJDIR)/*

# Include general rules
include $(ROOT)/rules/rules.mk

# Include additional rules
include rules.mk

upload: $(BIN)
	@$(INFORM) "Upload $(BIN)"
	@$(LOGTIME) $(PYTHON) $(UPLOAD) $(UPLOADFLAGS) $(BIN) $(LOGONLY)
	@$(PYTHON) $(UPLOAD) $(UPLOADFLAGS) $(BIN) $(LOGOUT)

-include $(DEPS)

.PHONY: default help deps compile link clean upload
