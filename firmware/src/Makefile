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

help:
	@echo -e "\n\e[1;34mTargets for makefile\e[0;0m\n"
	@echo -e "\t\e[1;34mall\e[0;0m:\t\tcompiles and links all targets"
	@echo -e "\t\e[1;34mcompile\e[0;0m:\tcompiles all targets"
	@echo -e "\t\e[1;34mlink\e[0;0m:\t\tlink all targets"
	@echo -e "\t\e[1;34mclean\e[0;0m:\t\tcleanup output"

all: compile link

compile: $(OBJS) $(LD)

link: $(ELF) $(BIN) $(SIZES)

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

$(OBJDIR)/%.cpp.o: %.cpp
	@$(LOG) "$@"
	@$(CXX) $(CFLAGS) $< -o $@

$(LD): $(ESP8266_SDK)/ld/eagle.app.v6.common.ld.h
	@$(LOG) "$@"
	@$(GCC) -CC -E -P -DVTABLES_IN_FLASH $< -o $@

$(ELF): $(OBJS) $(LD)
	@$(LOG) "$@"
	@$(GCC) $(LDFLAGS) -o $@ -Wl,--start-group $(OBJS) $(LDLIBS) -Wl,--end-group

$(BIN): $(ELF)
	@$(LOG) "$@"
	@$(PYTHON) $(ELF2BIN) --eboot "$(ESP8266_PATH)/hardware/esp8266/2.5.2/bootloaders/eboot/eboot.elf" --app $< --flash_mode dio --flash_freq 40 --flash_size 4M --path $(ESP8266_BIN) --out $@
	@$(PYTHON) $(SIGNING) --mode sign --privatekey private.key --bin $@ --out $@.signed

$(SIZES): $(BIN)
	@$(LOG) "Size"
	@$(SIZE) -A $(ELF) > $@

upload: $(BIN)
	@$(INFORM) "Upload $(BIN)"
	@$(PYTHON) $(UPLOAD) $(UPLOADFLAGS) $(BIN) --end 

-include $(DEPS)

.PHONY: all compile link clean cleanall upload
