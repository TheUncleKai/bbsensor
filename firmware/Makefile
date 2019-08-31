# Makefile for BBSensor

ROOT = .

include $(ROOT)/rules/config.mk
include $(ROOT)/rules/setup.mk

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

.PHONY: all compile clean
