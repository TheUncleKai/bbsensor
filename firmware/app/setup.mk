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

compile_bbsensor:
	@$(MKDIR) $(OUTPUT)
	@$(INFORM) "Compile BBSensor"
	@$(MAKE) -s -C app -f $(MAKEFILE_APP) compile

link_bbsensor: compile_bbsensor
	@$(INFORM) "Link BBSensor"
	@$(MAKE) -s -C app -f $(MAKEFILE_APP) link

clean_bbsensor: link_bbsensor
	@$(INFORM) "Clean BBSensor"
	@$(MAKE) -s -C app -f $(MAKEFILE_APP) clean

upload_bbsensor: link_bbsensor
	@$(INFORM) "Upload firmware"
	@$(MAKE) -s -C app -f $(MAKEFILE_APP) upload


LINK_LIST += link_bbsensor
CLEAN_LIST += clean_bbsensor
UPLOAD_LIST += upload_bbsensor
PHONY_LIST += compile_bbsensor link_bbsensor clean_bbsensor upload_bbsensor
