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

compile_webserver:
	@$(MKDIR) $(OUTPUT)
	@$(INFORM) "Compile $(LIBESP8266WEBSERVER)"
	@$(MAKE) -s -C ext/esp8266webserver -f Makefile compile

link_webserver: compile_webserver
	@$(INFORM) "Link $(LIBESP8266WEBSERVER)"
	@$(MAKE) -s -C ext/esp8266webserver -f Makefile link

clean_webserver: link_webserver
	@$(INFORM) "Clean $(LIBESP8266WEBSERVER)"
	@$(MAKE) -s -C ext/esp8266webserver -f Makefile clean
