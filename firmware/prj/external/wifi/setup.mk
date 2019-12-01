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

compile_wifi:
	@$(MKDIR) $(OUTPUT)
	@$(INFORM) "Compile WIFI"
	@$(MAKE) -s -C prj/external/wifi -f $(MAKEFILE) compile

link_wifi: compile_wifi
	@$(INFORM) "Link WIFI"
	@$(MAKE) -s -C prj/external/wifi -f $(MAKEFILE) link

clean_wifi: link_wifi
	@$(INFORM) "Clean WIFI"
	@$(MAKE) -s -C prj/external/wifi -f $(MAKEFILE) clean

LINK_LIST += link_wifi
CLEAN_LIST += clean_wifi
PHONY_LIST += compile_wifi link_wifi clean_wifi
