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

Updater_Signing.h: $(ROOT)/rules/config.mk
	@$(LOG) "$@"
	@echo "#define ARDUINO_SIGNING 0" > Updater_Signing.h

$(OBJDIR)/%.cpp.o: $(SRCDIR)/libb64/%.cpp
	@$(LOG) "(CXX) $@"
	@$(MKDIR) $(OBJDIR)
	@$(LOGTIME) $(CXX) $(CFLAGS) $< -o $@ $(LOGONLY)
	@$(CXX) $(CFLAGS) $< -o $@ $(LOGOUT)

$(OBJDIR)/%.cpp.o: $(SRCDIR)/umm_malloc/%.cpp
	@$(LOG) "(CXX) $@"
	@$(MKDIR) $(OBJDIR)
	@$(LOGTIME) $(CXX) $(CFLAGS) $< -o $@ $(LOGONLY)
	@$(CXX) $(CFLAGS) $< -o $@ $(LOGOUT)

$(OBJDIR)/%.c.o: $(SRCDIR)/umm_malloc/%.c
	@$(LOG) "(GCC) $@"
	@$(MKDIR) $(OBJDIR)
	@$(LOGTIME) $(GCC) $(CFLAGS) $< -o $@ $(LOGONLY)
	@$(GCC) $(CFLAGS) $< -o $@ $(LOGOUT)

$(OBJDIR)/%.cpp.o: $(SRCDIR)/spiffs/%.cpp
	@$(LOG) "(CXX) $@"
	@$(MKDIR) $(OBJDIR)
	@$(LOGTIME) $(CXX) $(CFLAGS) $< -o $@ $(LOGONLY)
	@$(CXX) $(CFLAGS) $< -o $@ $(LOGOUT)
