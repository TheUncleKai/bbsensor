# Makefile for BBSensor

ROOT = .

include $(ROOT)/rules/config.mk
include $(ROOT)/rules/setup.mk

default: core main

main: core
	@$(INFORM) "Build Main"
	@$(MAKE) -s -C src -f Makefile all

core:
	@$(INFORM) "Build Core"
	@$(MAKE) -s -C ext/core -f Makefile all

clean:
	@$(MAKE) -s -C ext/core -f Makefile clean
	@$(MAKE) -s -C src -f Makefile clean

.PHONY: default core main clean
