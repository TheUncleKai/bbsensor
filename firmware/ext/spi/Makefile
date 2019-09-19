# Makefile for corelib

ROOT = ../..

include $(ROOT)/rules/config.mk
include $(ROOT)/rules/setup.mk

OBJDIR := $(ROOT)/$(OUTPUT)/$(LIBSPI)
TARGET = $(ROOT)/$(OUTPUT)/$(LIBSPI)$(LIB_SUFFIX)

include sources.mk
include flags.mk
include path.mk

default: all

help:
	@$(ECHO) "\n\e[1;34mTargets for makefile\e[0;0m\n"
	@$(ECHO) "\t\e[1;34mall\e[0;0m:\t\tcompiles and link core library"
	@$(ECHO) "\t\e[1;34mcompile\e[0;0m:\tcompile core library"
	@$(ECHO) "\t\e[1;34mlink\e[0;0m:\t\tlink core library"
	@$(ECHO) "\t\e[1;34mprepare\e[0;0m:\tprepare if needed (used currently for Code::Blocks workspace)"
	@$(ECHO) "\t\e[1;34mclean\e[0;0m:\t\tcleanup output"

compile: $(OBJS)

link: $(ARS)

all: compile link

prepare:
	@$(LOG) "Copy $(LIBSPI)"
	@$(MKDIR) libb64
	@$(MKDIR) umm_malloc
	@$(MKDIR) spiffs
	@$(COPY) $(ESP8266_SPI)/*.h .
	@$(COPY) $(ESP8266_SPI)/*.cpp .

cleanall: clean

clean:
	@$(RM) $(OBJDIR)/*
	@$(RM) $(TARGET)
	@-$(RMDIR) $(OBJDIR)
	@$(RM) *.cpp *.h

include rules.mk

.PHONY: default help all compile link prepare clean cleanall
