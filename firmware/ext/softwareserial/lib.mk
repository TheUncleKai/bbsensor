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

compile_serial:
	@$(MKDIR) $(OUTPUT)
	@$(INFORM) "Compile $(LIBSOFTWARESERIAL)"
	@$(MAKE) -s -C ext/softwareserial -f Makefile compile

link_serial: compile_serial
	@$(INFORM) "Link $(LIBSOFTWARESERIAL)"
	@$(MAKE) -s -C ext/softwareserial -f Makefile link

clean_serial: link_serial
	@$(INFORM) "Clean $(LIBSOFTWARESERIAL)"
	@$(MAKE) -s -C ext/softwareserial -f Makefile clean
