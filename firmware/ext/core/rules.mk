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

Updater_Signing.h:
	@$(LOG) "$@"
	@echo "#define ARDUINO_SIGNING 0" > Updater_Signing.h

# =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
# CORE, c++

$(OBJDIR)/%.cpp.o: $(ESP8266_CORE)/%.cpp Updater_Signing.h
	@$(LOG) "(CXX) $@"
	@$(MKDIR) $(OBJDIR)
	@$(LOGTIME) $(CXX) $(CFLAGS) $< -o $@ $(LOGONLY)
	@$(CXX) $(CFLAGS) $< -o $@ $(LOGOUT)

# =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
# LIBB64, c++

$(OBJDIR)/%.cpp.o: $(ESP8266_CORE)/libb64/%.cpp
	@$(LOG) "(CXX) $@"
	@$(MKDIR) $(OBJDIR)
	@$(LOGTIME) $(CXX) $(CFLAGS) $< -o $@ $(LOGONLY)
	@$(CXX) $(CFLAGS) $< -o $@ $(LOGOUT)

# =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
# MALLOC, c++

$(OBJDIR)/%.cpp.o: $(ESP8266_CORE)/umm_malloc/%.cpp
	@$(LOG) "(CXX) $@"
	@$(MKDIR) $(OBJDIR)
	@$(LOGTIME) $(CXX) $(CFLAGS) $< -o $@ $(LOGONLY)
	@$(CXX) $(CFLAGS) $< -o $@ $(LOGOUT)

# =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
# SPIFFS, c++

$(OBJDIR)/%.cpp.o: $(ESP8266_CORE)/spiffs/%.cpp
	@$(LOG) "(CXX) $@"
	@$(MKDIR) $(OBJDIR)
	@$(LOGTIME) $(CXX) $(CFLAGS) $< -o $@ $(LOGONLY)
	@$(CXX) $(CFLAGS) $< -o $@ $(LOGOUT)

# =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
# ASM, c++

$(OBJDIR)/%.S.o: $(ESP8266_CORE)/%.S Updater_Signing.h $(SOURCES_CORE_ASM)
	@$(LOG) "(GCC) $@"
	@$(MKDIR) $(OBJDIR)
	@$(LOGTIME) $(GCC) $(ASMFLAGS) $< -o $@ $(LOGONLY)
	@$(GCC) $(ASMFLAGS) $< -o $@ $(LOGOUT)

# =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
# LIB

$(OBJDIR)/%.ar: $(OBJDIR)/%.o $(OBJS)
	@$(LOG) "(AR) $< -> $(TARGET)"
	@$(LOGTIME) $(AR) cru $(TARGET) $< $(LOGONLY)
	@$(AR) cru $(TARGET) $< $(LOGOUT)
	@echo 1 > $@
