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

$(ADD_DEP): eagle.app.v6.common.ld.h $(ROOT)/rules/config.mk
	@$(LOG) "$@"
	@$(LOGTIME) $(GCC) -I$(ESP8266_SDK)/ld -CC -E -P -DVTABLES_IN_FLASH $< -o $@ $(LOGONLY)
	@$(GCC) -I$(ESP8266_SDK)/ld -CC -E -P -DVTABLES_IN_FLASH $< -o $@ $(LOGOUT)

$(TARGET): $(OBJS) $(ADD_DEP)
	@$(LOG) "$@"
	@$(LOGTIME) $(GCC) $(LDFLAGS) -o $@ -Wl,--start-group $(OBJS) $(LDLOCAL) $(LDLIBS) -Wl,--end-group $(LOGONLY)
	@$(GCC) $(LDFLAGS) -o $@ -Wl,--start-group $(OBJS) $(ADD_LIBS) $(LDLIBS) -Wl,--end-group $(LOGOUT)

$(BIN): $(TARGET)
	@$(LOG) "$@"
	@$(LOGTIME) $(PYTHON) $(ELF2BIN) --eboot "$(ESP8266_PATH)/hardware/esp8266/$(ESP_VERSION)/bootloaders/eboot/eboot.elf" --app $< --flash_mode dio --flash_freq 40 --flash_size 4M --path $(ESP8266_BIN) --out $@ $(LOGONLY)
	@$(PYTHON) $(ELF2BIN) --eboot "$(ESP8266_PATH)/hardware/esp8266/$(ESP_VERSION)/bootloaders/eboot/eboot.elf" --app $< --flash_mode dio --flash_freq 40 --flash_size 4M --path $(ESP8266_BIN) --out $@ $(LOGOUT)
	@$(LOGTIME) $(PYTHON) $(SIGNING) --mode sign --privatekey private.key --bin $@ --out $@.signed $(LOGONLY)
	@$(PYTHON) $(SIGNING) --mode sign --privatekey private.key --bin $@ --out $@.signed $(LOGOUT)

$(SIZES): $(BIN)
	@$(LOG) "Log size"
	@$(LOGTIME) $(SIZE) -A $(TARGET) $(LOGONLY)
	@$(SIZE) -A $(TARGET) $(LOGONLY)
