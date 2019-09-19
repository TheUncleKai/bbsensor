
Updater_Signing.h:
	@$(LOG) "$@"
	@echo "#define ARDUINO_SIGNING 0" > Updater_Signing.h

$(OBJDIR)/%.o: $(ESP8266_CORE)/%.cpp Updater_Signing.h $(SOURCES_CORE_CPP)
	@$(LOG) "(CXX) $@"
	@$(MKDIR) $(OBJDIR)
	@$(LOGTIME) $(CXX) $(CFLAGS) $< -o $@ $(LOGONLY)
	@$(CXX) $(CFLAGS) $< -o $@ $(LOGOUT)

$(OBJDIR)/%.d: $(ESP8266_CORE)/%.cpp Updater_Signing.h $(SOURCES_CORE_CPP)
	@$(LOG) "(CXX) $@"
	@$(MKDIR) $(OBJDIR)
	@$(LOGTIME) $(CXX) -MM $(CFLAGS) $< -o $@ $(LOGONLY)
	@$(CXX) -MM $(CFLAGS) $< -o $@ $(LOGOUT)


$(OBJDIR)/%.o: $(ESP8266_CORE)/libb64/%.cpp Updater_Signing.h $(SOURCES_LIBB64)
	@$(LOG) "(CXX) $@"
	@$(MKDIR) $(OBJDIR)
	@$(LOGTIME) $(CXX) $(CFLAGS) $< -o $@ $(LOGONLY)
	@$(CXX) $(CFLAGS) $< -o $@ $(LOGOUT)

$(OBJDIR)/%.d: $(ESP8266_CORE)/libb64/%.cpp Updater_Signing.h $(SOURCES_LIBB64)
	@$(LOG) "(CXX) $@"
	@$(MKDIR) $(OBJDIR)
	@$(LOGTIME) $(CXX) -MM $(CFLAGS) $< -o $@ $(LOGONLY)
	@$(CXX) -MM $(CFLAGS) $< -o $@ $(LOGOUT)


$(OBJDIR)/%.o: $(ESP8266_CORE)/umm_malloc/%.cpp Updater_Signing.h $(SOURCES_MALLOC)
	@$(LOG) "(CXX) $@"
	@$(MKDIR) $(OBJDIR)
	@$(LOGTIME) $(CXX) $(CFLAGS) $< -o $@ $(LOGONLY)
	@$(CXX) $(CFLAGS) $< -o $@ $(LOGOUT)

$(OBJDIR)/%.d: $(ESP8266_CORE)/umm_malloc/%.cpp Updater_Signing.h $(SOURCES_MALLOC)
	@$(LOG) "(CXX) $@"
	@$(MKDIR) $(OBJDIR)
	@$(LOGTIME) $(CXX) -MM $(CFLAGS) $< -o $@ $(LOGONLY)
	@$(CXX) -MM $(CFLAGS) $< -o $@ $(LOGOUT)


$(OBJDIR)/%.o: $(ESP8266_CORE)/spiffs/%.cpp Updater_Signing.h $(SOURCES_SPIFFS)
	@$(LOG) "(CXX) $@"
	@$(MKDIR) $(OBJDIR)
	@$(LOGTIME) $(CXX) $(CFLAGS) $< -o $@ $(LOGONLY)
	@$(CXX) $(CFLAGS) $< -o $@ $(LOGOUT)

$(OBJDIR)/%.d: $(ESP8266_CORE)/spiffs/%.cpp Updater_Signing.h $(SOURCES_SPIFFS)
	@$(LOG) "(CXX) $@"
	@$(MKDIR) $(OBJDIR)
	@$(LOGTIME) $(CXX) -MM $(CFLAGS) $< -o $@ $(LOGONLY)
	@$(CXX) -MM $(CFLAGS) $< -o $@ $(LOGOUT)


$(OBJDIR)/%.o: $(ESP8266_CORE)/%.S Updater_Signing.h $(SOURCES_CORE_ASM)
	@$(LOG) "(GCC) $@"
	@$(LOGTIME) $(GCC) $(ASMFLAGS) $< -o $@ $(LOGONLY)
	@$(GCC) $(ASMFLAGS) $< -o $@ $(LOGOUT)
