
Updater_Signing.h:
	@$(LOG) "$@"
	@echo "#define ARDUINO_SIGNING 0" > Updater_Signing.h

# =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
# CORE, c++

$(OBJDIR)/%.o: $(ESP8266_CORE)/%.cpp Updater_Signing.h
	@$(LOG) "(CXX) $@"
	@$(MKDIR) $(OBJDIR)
	@$(LOGTIME) $(CXX) $(CFLAGS) $< -o $@ $(LOGONLY)
	@$(CXX) $(CFLAGS) $< -o $@ $(LOGOUT)

$(OBJDIR)/%.d: $(ESP8266_CORE)/%.cpp
	@$(LOG) "(CXX) $@"
	@$(MKDIR) $(OBJDIR)
	@$(LOGTIME) $(CXX) -MM $(CFLAGS) $< -o $@ $(LOGONLY)
	@$(CXX) -MM $(CFLAGS) $< -o $@ $(LOGOUT)


# =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
# LIBB64, c++

$(OBJDIR)/%.o: $(ESP8266_CORE)/libb64/%.cpp
	@$(LOG) "(CXX) $@"
	@$(MKDIR) $(OBJDIR)
	@$(LOGTIME) $(CXX) $(CFLAGS) $< -o $@ $(LOGONLY)
	@$(CXX) $(CFLAGS) $< -o $@ $(LOGOUT)

$(OBJDIR)/%.d: $(ESP8266_CORE)/libb64/%.cpp
	@$(LOG) "(CXX) $@"
	@$(MKDIR) $(OBJDIR)
	@$(LOGTIME) $(CXX) -MM $(CFLAGS) $< -o $@ $(LOGONLY)
	@$(CXX) -MM $(CFLAGS) $< -o $@ $(LOGOUT)


# =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
# MALLOC, c++

$(OBJDIR)/%.o: $(ESP8266_CORE)/umm_malloc/%.cpp
	@$(LOG) "(CXX) $@"
	@$(MKDIR) $(OBJDIR)
	@$(LOGTIME) $(CXX) $(CFLAGS) $< -o $@ $(LOGONLY)
	@$(CXX) $(CFLAGS) $< -o $@ $(LOGOUT)

$(OBJDIR)/%.d: $(ESP8266_CORE)/umm_malloc/%.cpp
	@$(LOG) "(CXX) $@"
	@$(MKDIR) $(OBJDIR)
	@$(LOGTIME) $(CXX) -MM $(CFLAGS) $< -o $@ $(LOGONLY)
	@$(CXX) -MM $(CFLAGS) $< -o $@ $(LOGOUT)


# =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
# SPIFFS, c++

$(OBJDIR)/%.o: $(ESP8266_CORE)/spiffs/%.cpp
	@$(LOG) "(CXX) $@"
	@$(MKDIR) $(OBJDIR)
	@$(LOGTIME) $(CXX) $(CFLAGS) $< -o $@ $(LOGONLY)
	@$(CXX) $(CFLAGS) $< -o $@ $(LOGOUT)

$(OBJDIR)/%.d: $(ESP8266_CORE)/spiffs/%.cpp
	@$(LOG) "(CXX) $@"
	@$(MKDIR) $(OBJDIR)
	@$(LOGTIME) $(CXX) -MM $(CFLAGS) $< -o $@ $(LOGONLY)
	@$(CXX) -MM $(CFLAGS) $< -o $@ $(LOGOUT)


# =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
# ASM, c++

$(OBJDIR)/%.o: $(ESP8266_CORE)/%.S Updater_Signing.h $(SOURCES_CORE_ASM)
	@$(LOG) "(GCC) $@"
	@$(LOGTIME) $(GCC) $(ASMFLAGS) $< -o $@ $(LOGONLY)
	@$(GCC) $(ASMFLAGS) $< -o $@ $(LOGOUT)


# =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
# LIB

$(OBJDIR)/%.ar: $(OBJDIR)/%.o $(OBJS)
	@$(LOG) "(AR) $< -> $(TARGET)"
	@$(LOGTIME) $(AR) cru $(TARGET) $< $(LOGONLY)
	@$(AR) cru $(TARGET) $< $(LOGOUT)
	@echo 1 > $@
