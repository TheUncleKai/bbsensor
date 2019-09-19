# Makefile for corelib

ROOT = ..

include $(ROOT)/rules/config.mk
include $(ROOT)/rules/setup.mk

OBJDIR := $(ROOT)/$(OUTPUT)/sensor

ELF = $(ROOT)/$(OUTPUT)/$(APP).elf
BIN = $(ROOT)/$(OUTPUT)/$(APP).bin
MAP = $(ROOT)/$(OUTPUT)/$(APP).map
SIZES = $(ROOT)/$(OUTPUT)/$(APP).txt
LD = local.eagle.app.v6.common.ld

include objects.mk

OBJS := $(addprefix $(OBJDIR)/, $(OBJECTS))

DEPS=$(OBJS:.o=.d)

include flags.mk

default: compile link deps

help:
	@echo -e "\n\e[1;34mTargets for makefile\e[0;0m\n"
	@echo -e "\t\e[1;34mall\e[0;0m:\t\tcompiles and link firmware"
	@echo -e "\t\e[1;34mdeps\e[0;0m:\t\tcreate dependecies"
	@echo -e "\t\e[1;34mcompile\e[0;0m:\tcompiles firmware"
	@echo -e "\t\e[1;34mlink\e[0;0m:\t\tlink firmware"
	@echo -e "\t\e[1;34mupload\e[0;0m:\t\tupload firmware"
	@echo -e "\t\e[1;34mclean\e[0;0m:\t\tcleanup output"

all: compile link deps

deps: $(OBJDIR) $(DEPS)

compile: $(OBJDIR) $(OBJS) $(LD)

link: $(OBJDIR) $(ELF) $(BIN) $(SIZES)

cleanall: clean

clean:
	@$(RM) $(OBJS)
	@$(RM) $(MAP)
	@$(RM) $(DEPS)
	@$(RM) $(LD)
	@$(RM) $(ELF)
	@$(RM) $(BIN)
	@$(RM) $(SIZES)
	@-$(RMDIR) $(OBJDIR)

$(OBJS): | $(OBJDIR)

$(OBJDIR):
	@$(LOG) "Create $@"
	@$(MKDIR) $@

$(OBJDIR)/%.d: %.cpp
	@$(MKDIR) $(OBJDIR)
	@$(LOG) "$@"
	@$(LOGTIME) $(CXX) -MM $(CFLAGS) $< -o $@ $(LOGONLY)
	@$(CXX) -MM $(CFLAGS) $< -o $@ $(LOGOUT)

$(OBJDIR)/%.o: %.cpp
	@$(LOG) "$@"
	@$(LOGTIME) $(CXX) $(CFLAGS) $< -o $@ $(LOGONLY)
	@$(CXX) $(CFLAGS) $< -o $@ $(LOGOUT)

$(LD): $(ESP8266_SDK)/ld/eagle.app.v6.common.ld.h
	@$(LOG) "$@"
	@$(LOGTIME) $(GCC) -CC -E -P -DVTABLES_IN_FLASH $< -o $@ $(LOGONLY)
	@$(GCC) -CC -E -P -DVTABLES_IN_FLASH $< -o $@ $(LOGOUT)

$(ELF): $(OBJS) $(LD)
	@$(LOG) "$@"
	@$(LOGTIME) $(GCC) $(LDFLAGS) -o $@ -Wl,--start-group $(OBJS) $(LDLIBS) -Wl,--end-group $(LOGONLY)
	@$(GCC) $(LDFLAGS) -o $@ -Wl,--start-group $(OBJS) $(LDLIBS) -Wl,--end-group $(LOGOUT)

$(BIN): $(ELF)
	@$(LOG) "$@"
	@$(LOGTIME) $(PYTHON) $(ELF2BIN) --eboot "$(ESP8266_PATH)/hardware/esp8266/2.5.2/bootloaders/eboot/eboot.elf" --app $< --flash_mode dio --flash_freq 40 --flash_size 4M --path $(ESP8266_BIN) --out $@ $(LOGONLY)
	@$(PYTHON) $(ELF2BIN) --eboot "$(ESP8266_PATH)/hardware/esp8266/2.5.2/bootloaders/eboot/eboot.elf" --app $< --flash_mode dio --flash_freq 40 --flash_size 4M --path $(ESP8266_BIN) --out $@ $(LOGOUT)
	@$(LOGTIME) $(PYTHON) $(SIGNING) --mode sign --privatekey private.key --bin $@ --out $@.signed $(LOGONLY)
	@$(PYTHON) $(SIGNING) --mode sign --privatekey private.key --bin $@ --out $@.signed $(LOGOUT)

$(SIZES): $(BIN)
	@$(LOG) "Log size"
	@$(LOGTIME) $(SIZE) -A $(ELF) $(LOGONLY)
	@$(SIZE) -A $(ELF) $(LOGONLY)

upload: $(BIN)
	@$(INFORM) "Upload $(BIN)"
	@$(LOGTIME) $(PYTHON) $(UPLOAD) $(UPLOADFLAGS) $(BIN) --end $(LOGONLY)
	@$(PYTHON) $(UPLOAD) $(UPLOADFLAGS) $(BIN) --end $(LOGOUT)

-include $(DEPS)

.PHONY: default all compile link clean cleanall upload
