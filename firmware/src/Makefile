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

all: compile link

compile: $(OBJS) $(LD)

link: $(ELF) $(BIN) $(SIZES)

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

-include $(DEPS)

.PHONY: all compile link clean
