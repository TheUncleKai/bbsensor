# Makefile for BBSensor

default: core sensor

sensor: core
	@echo " => Build Core"
	@$(MAKE) -s -C src -f Makefile all

core:
	@echo " => Build Core"
	@$(MAKE) -s -C ext/core -f Makefile all

clean:
	@$(MAKE) -s -C ext/core -f Makefile clean
	@$(MAKE) -s -C src -f Makefile clean
    
.PHONY: default core sensor clean
