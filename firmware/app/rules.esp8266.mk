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

local.eagle.app.v6.common.ld: eagle.app.v6.common.ld.h
	@$(LOG) "$@"
	@$(LOGTIME) $(GCC) -I$(PATH_SDK)/ld -CC -E -P -DVTABLES_IN_FLASH $< -o $@ $(LOGONLY)
	@$(GCC) -I$(PATH_SDK)/ld -CC -E -P -DVTABLES_IN_FLASH $< -o $@ $(LOGOUT)

$(TARGET_ELF): $(OBJS) local.eagle.app.v6.common.ld
	@$(LOG) "$@"
	@$(LOGTIME) $(GCC) $(LDFLAGS) -o $@ -Wl,--start-group $(OBJS) $(LDLOCAL) $(LDLIBS) -Wl,--end-group $(LOGONLY)
	@$(GCC) $(LDFLAGS) -o $@ -Wl,--start-group $(OBJS) -lcore -lSPI -lEEPROM -lWiFi -lCRC32 $(LDLIBS) -Wl,--end-group $(LOGOUT)

$(TARGET_BIN): $(TARGET_ELF)
	@$(LOG) "$@"
	@$(LOGTIME) $(PYTHON) $(ELF2BIN) --eboot "$(PATH_HW)/bootloaders/eboot/eboot.elf" --app $< --flash_mode dio --flash_freq 40 --flash_size 4M --path $(PATH_BIN) --out $@ $(LOGONLY)
	@$(PYTHON) $(ELF2BIN) --eboot "$(PATH_HW)/bootloaders/eboot/eboot.elf" --app $< --flash_mode dio --flash_freq 40 --flash_size 4M --path $(PATH_BIN) --out $@ $(LOGOUT)
	@$(LOGTIME) $(PYTHON) $(SIGNING) --mode sign --privatekey private.key --bin $@ --out $@.signed $(LOGONLY)
	@$(PYTHON) $(SIGNING) --mode sign --privatekey private.key --bin $@ --out $@.signed $(LOGOUT)

$(TARGET_SIZE): $(TARGET_BIN)
	@$(LOG) "Log size"
	@$(LOGTIME) $(SIZE) -A $(TARGET_ELF) $(LOGONLY)
	@$(SIZE) -A $(TARGET_ELF) > $@
