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

$(TARGET_ELF): $(OBJS)
	@$(LOG) "(GCC) $@"
	@$(LOGTIME) $(GCC) $(LDFLAGS) -Wl,--start-group $(OBJS) $(DEP_LIBS) $(LDLIBS) -Wl,--end-group -Wl,-EL -o $@ $(LOGONLY)
	@$(GCC) $(LDFLAGS) -Wl,--start-group $(OBJS) $(DEP_LIBS) $(LDLIBS) -Wl,--end-group -Wl,-EL -o $@ $(LOGOUT)

$(TARGET_PART): $(PATH_HW)/tools/partitions/default.csv
	@$(LOG) "(ESP32PART) $@"
	@$(LOGTIME) $(ESP32PART) -q $< $@ $@ $(LOGONLY)
	@$(ESP32PART) -q $< $@ $(LOGOUT)

$(TARGET_BIN): $(TARGET_ELF)
	@$(LOG) "(ESPTOOL) $@"
	@$(LOGTIME) $(ESPTOOL) --chip esp32 elf2image --flash_mode dio --flash_freq 80m --flash_size 4MB -o $@ $< $(LOGONLY)
	@$(ESPTOOL) --chip esp32 elf2image --flash_mode dio --flash_freq 80m --flash_size 4MB -o $@ $< $(LOGOUT)

$(TARGET_SIZE): $(TARGET_ELF)
	@$(LOG) "(SIZE) $@"
	@$(LOGTIME) $(SIZE) -A $< $(LOGONLY)
	@$(SIZE) -A $< > $@
