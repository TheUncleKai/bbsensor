# Makefile for corelib

ROOT = ../..

include $(ROOT)/rules/config.mk
include $(ROOT)/rules/setup.mk

OBJDIR := $(ROOT)/$(OUTPUT)/$(LIBCORE)
TARGET = $(ROOT)/$(OUTPUT)/$(LIBCORE)$(LIB_SUFFIX)

include objects.mk

include flags.mk

help:
	@$(ECHO) "\n\e[1;34mTargets for makefile\e[0;0m\n"
	@$(ECHO) "\t\e[1;34mall\e[0;0m:\t\tcompiles and link core library"
	@$(ECHO) "\t\e[1;34mcompile\e[0;0m:\tcompile core library"
	@$(ECHO) "\t\e[1;34mlink\e[0;0m:\t\tlink core library"
	@$(ECHO) "\t\e[1;34mprepare\e[0;0m:\tprepare if needed (used currently for Code::Blocks workspace)"
	@$(ECHO) "\t\e[1;34mclean\e[0;0m:\t\tcleanup output"

default: all

all: $(OBJS) $(TEMP)

