
$(OBJDIR)/%.d: %.cpp
	@$(MKDIR) $(OBJDIR)
	@$(LOG) "$@"
	@$(MKDIR) $(OBJDIR)
	@$(LOGTIME) $(CXX) -MM $(CFLAGS) $< -o $@ $(LOGONLY)
	@$(CXX) -MM $(CFLAGS) $< -o $@ $(LOGOUT)

$(OBJDIR)/%.o: %.cpp
	@$(LOG) "$@"
	@$(MKDIR) $(OBJDIR)
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
	@$(GCC) $(LDFLAGS) -o $@ -Wl,--start-group $(OBJS) $(LDLIBS) -Wl,--end-group $(LOGOUT)

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
