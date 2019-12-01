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

include $(ROOT)/prj/config.mk
include $(ROOT)/prj/board.mk
include $(ROOT)/prj/tools/log.mk
include $(ROOT)/prj/tools/run.mk

LINK_LIST = 
CLEAN_LIST = 
UPLOAD_LIST = 
PHONY_LIST = 

default: link

help:
	@$(ECHO) "\n\e[1;34mTargets for makefile\e[0;0m\n"
	@$(ECHO) "\t\e[1;34mcompile\e[0;0m:\tcompiles libs and firmware"
	@$(ECHO) "\t\e[1;34mlink\e[0;0m:\t\tlink firmware"
	@$(ECHO) "\t\e[1;34mupload\e[0;0m:\t\tupload firmware"
	@$(ECHO) "\t\e[1;34mclean\e[0;0m:\t\tcleanup output"

include $(ROOT)/prj/rules.$(BOARD)/list.mk
include $(ROOT)/app/setup.mk

# =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
# Projects

link: $(LINK_LIST)

clean: $(CLEAN_LIST)

upload: $(UPLOAD_LIST)

.PHONY: default help link clean upload $(PHONY_LIST)
