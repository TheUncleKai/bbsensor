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

$(OBJDIR)/%.d: %.cpp
	@$(MKDIR) $(OBJDIR)
	@$(LOG) "$@"
	@$(MKDIR) $(OBJDIR)
	@$(MKDIR) $(OBJDIR)/devices
	@$(MKDIR) $(OBJDIR)/data
	@$(LOGTIME) $(CXX) -MM $(CFLAGS) $< -o $@ $(LOGONLY)
	@$(CXX) -MM $(CFLAGS) $< -o $@ $(LOGOUT)

$(OBJDIR)/%.o: %.cpp
	@$(LOG) "$@"
	@$(MKDIR) $(OBJDIR)
	@$(MKDIR) $(OBJDIR)/devices
	@$(MKDIR) $(OBJDIR)/data
	@$(LOGTIME) $(CXX) $(CFLAGS) $< -o $@ $(LOGONLY)
	@$(CXX) $(CFLAGS) $< -o $@ $(LOGOUT)

$(LD): $(ESP8266_SDK)/ld/eagle.app.v6.common.ld.h
	@$(LOG) "$@"
	@$(MKDIR) $(OBJDIR)
	@$(LOGTIME) $(GCC) -CC -E -P -DVTABLES_IN_FLASH $< -o $@ $(LOGONLY)
	@$(GCC) -CC -E -P -DVTABLES_IN_FLASH $< -o $@ $(LOGOUT)

$(ELF): $(OBJS) $(LD)
	@$(LOG) "$@"
	@$(MKDIR) $(OBJDIR)
	@$(LOGTIME) $(GCC) $(LDFLAGS) -o $@ -Wl,--start-group $(OBJS) $(LDLIBS) -Wl,--end-group $(LOGONLY)
	@$(GCC) $(LDFLAGS) -o $@ -Wl,--start-group $(OBJS) $(ROOT)/$(OUTPUT)/$(LIBCORE)$(LIB_SUFFIX) $(ROOT)/$(OUTPUT)/$(LIBSPI)$(LIB_SUFFIX) $(LDLIBS) -Wl,--end-group $(LOGOUT)

$(BIN): $(ELF)
	@$(LOG) "$@"
	@$(MKDIR) $(OBJDIR)
	@$(LOGTIME) $(PYTHON) $(ELF2BIN) --eboot "$(ESP8266_PATH)/hardware/esp8266/2.5.2/bootloaders/eboot/eboot.elf" --app $< --flash_mode dio --flash_freq 40 --flash_size 4M --path $(ESP8266_BIN) --out $@ $(LOGONLY)
	@$(PYTHON) $(ELF2BIN) --eboot "$(ESP8266_PATH)/hardware/esp8266/2.5.2/bootloaders/eboot/eboot.elf" --app $< --flash_mode dio --flash_freq 40 --flash_size 4M --path $(ESP8266_BIN) --out $@ $(LOGOUT)
	@$(LOGTIME) $(PYTHON) $(SIGNING) --mode sign --privatekey private.key --bin $@ --out $@.signed $(LOGONLY)
	@$(PYTHON) $(SIGNING) --mode sign --privatekey private.key --bin $@ --out $@.signed $(LOGOUT)

$(SIZES): $(BIN)
	@$(LOG) "Log size"
	@$(MKDIR) $(OBJDIR)
	@$(LOGTIME) $(SIZE) -A $(ELF) $(LOGONLY)
	@$(SIZE) -A $(ELF) $(LOGONLY)
