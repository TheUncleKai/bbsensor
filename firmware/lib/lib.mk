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

compile_bb:
	@$(MKDIR) $(OUTPUT)
	@$(INFORM) "Compile $(LIBBB)"
	@$(MAKE) -s -C lib -f Makefile compile

link_bb: compile_bb
	@$(INFORM) "Link $(LIBBB)"
	@$(MAKE) -s -C lib -f Makefile link

clean_bb: link_bb
	@$(INFORM) "Clean $(LIBBB)"
	@$(MAKE) -s -C lib -f Makefile clean

LINK_LIST += link_bb
CLEAN_LIST += clean_bb
PHONY_LIST += compile_bb link_bb clean_bb
