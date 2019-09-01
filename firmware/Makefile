# Makefile for BBSensor

ROOT = .

include $(ROOT)/rules/config.mk
include $(ROOT)/rules/setup.mk

help:
	@echo -e "\n\e[1;34mTargets for makefile\e[0;0m\n"
	@echo -e "\t\e[1;34minfo\e[0;0m:\t\tinfo about enviroments"
	@echo -e "\t\e[1;34mall\e[0;0m:\t\tcompiles and links all targets"
	@echo -e "\t\e[1;34mcompile\e[0;0m:\tcompiles all targets"
	@echo -e "\t\e[1;34mlink\e[0;0m:\t\tlink all targets"
	@echo -e "\t\e[1;34mprepare\e[0;0m:\tprepare targets if needed (used currently for Code::Blocks workspace)"
	@echo -e "\t\e[1;34mclean\e[0;0m:\t\tcleanup output"


info:
	@$(LOG) "ESP8266: $(ESP8266_PATH)"
	@$(LOG) "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-"
	@$(LOG) "Prefix:   $(ESP8266_GCC_PREFIX)"
	@$(LOG) "Root:     $(ESP8266_ROOT)"
	@$(LOG) "Bin:      $(ESP8266_BIN)"
	@$(LOG) "SDK:      $(ESP8266_SDK)"
	@$(LOG) "Variants: $(ESP8266_VARIANTS)"
	@$(LOG) "Tools:    $(TOOLS)"
	@$(LOG) "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-"
	@$(LOG) "Make directory:   $(MKDIR)"
	@$(LOG) "Remove file:      $(RM)"
	@$(LOG) "Remove directory: $(RMDIR)"
	@$(LOG) "Python:           $(PYTHON)"
	@$(LOG) "Copy file:        $(COPY)"
	@$(LOG) "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-"
	@$(LOG) "Include SDK:     $(ESP8266_INCLUDE_SDK)"
	@$(LOG) "Iclude Core:     $(ESP8266_INCLUDE_CORE)"
	@$(LOG) "Iclude Variants: $(ESP8266_INCLUDE_VARIANTS)"

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

.PHONY: help all compile link prepare clean info
