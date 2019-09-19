
# =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
# CORE, c++

$(OBJDIR)/%.cpp.o: $(ESP8266_SPI)/%.cpp
	@$(LOG) "(CXX) $@"
	@$(MKDIR) $(OBJDIR)
	@$(LOGTIME) $(CXX) $(CFLAGS) $< -o $@ $(LOGONLY)
	@$(CXX) $(CFLAGS) $< -o $@ $(LOGOUT)

# =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
# LIB

$(OBJDIR)/%.ar: $(OBJDIR)/%.o $(OBJS)
	@$(LOG) "(AR) $< -> $(TARGET)"
	@$(LOGTIME) $(AR) cru $(TARGET) $< $(LOGONLY)
	@$(AR) cru $(TARGET) $< $(LOGOUT)
	@echo 1 > $@
