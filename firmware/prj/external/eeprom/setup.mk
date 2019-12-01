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

compile_eeprom:
	@$(MKDIR) $(OUTPUT)
	@$(INFORM) "Compile EEPROM"
	@$(MAKE) -s -C prj/external/eeprom -f $(MAKEFILE) compile

link_eeprom: compile_eeprom
	@$(INFORM) "Link EEPROM"
	@$(MAKE) -s -C prj/external/eeprom -f $(MAKEFILE) link

clean_eeprom: link_eeprom
	@$(INFORM) "Clean EEPROM"
	@$(MAKE) -s -C prj/external/eeprom -f $(MAKEFILE) clean

LINK_LIST += link_eeprom
CLEAN_LIST += clean_eeprom
PHONY_LIST += compile_eeprom link_eeprom clean_eeprom
