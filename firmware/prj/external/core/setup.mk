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

compile_core:
	@$(MKDIR) $(OUTPUT)
	@$(INFORM) "Compile CORE"
	@$(MAKE) -s -C ext/core -f Makefile compile

link_core: compile_core
	@$(INFORM) "Link CORE"
	@$(MAKE) -s -C ext/core -f Makefile link

clean_core: link_core
	@$(INFORM) "Clean CORE"
	@$(MAKE) -s -C ext/core -f Makefile clean

LINK_LIST += link_core
CLEAN_LIST += clean_core
PHONY_LIST += compile_core link_core clean_core
