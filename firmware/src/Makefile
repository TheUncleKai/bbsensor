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

include sources.mk
include flags.mk
include path.mk

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

include rules.mk

upload: $(BIN)
	@$(INFORM) "Upload $(BIN)"
	@$(LOGTIME) $(PYTHON) $(UPLOAD) $(UPLOADFLAGS) $(BIN) --end $(LOGONLY)
	@$(PYTHON) $(UPLOAD) $(UPLOADFLAGS) $(BIN) --end $(LOGOUT)

-include $(DEPS)

.PHONY: default all compile link clean cleanall upload
