# Makefile for BBSensor

ROOT = .

include $(ROOT)/rules/config.mk
include $(ROOT)/rules/setup.mk

help:
	@echo -e "\n\e[1;34mTargets for makefile\e[0;0m\n"
	@echo -e "\t\e[1;34mall\e[0;0m:\t\tcompiles and links all targets"
	@echo -e "\t\e[1;34mcompile\e[0;0m:\tcompiles all targets"
	@echo -e "\t\e[1;34mlink\e[0;0m:\t\tlink all targets"
	@echo -e "\t\e[1;34mprepare\e[0;0m:\tprepare targets if needed (used currently for Code::Blocks workspace)"
	@echo -e "\t\e[1;34mclean\e[0;0m:\t\tcleanup output"

all:
	@$(MKDIR) $(OUTPUT)
	@$(INFORM) "Build $(LIBCORE)"
	@$(MAKE) -s -C ext/core -f Makefile all
	@$(INFORM) "Build $(APP)"
	@$(MAKE) -s -C src -f Makefile all

compile:
	@$(MKDIR) $(OUTPUT)
	@$(INFORM) "Compile $(LIBCORE)"
	@$(MAKE) -s -C ext/core -f Makefile compile
	@$(INFORM) "Compile $(APP)"
	@$(MAKE) -s -C src -f Makefile compile

link:
	@$(MKDIR) $(OUTPUT)
	@$(INFORM) "Link $(LIBCORE)"
	@$(MAKE) -s -C ext/core -f Makefile link
	@$(INFORM) "Link $(APP)"
	@$(MAKE) -s -C src -f Makefile link

prepare:
	@$(INFORM) "Prepare $(LIBCORE)"
	@$(MAKE) -s -C ext/core -f Makefile prepare

clean:
	@$(INFORM) "Clean $(LIBCORE)"
	@$(MAKE) -s -C ext/core -f Makefile clean
	@$(INFORM) "Clean $(APP)"
	@$(MAKE) -s -C src -f Makefile clean
	@-$(RMDIR) $(OUTPUT)

.PHONY: help all compile link prepare clean
