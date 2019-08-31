# Makefile for corelib

ROOT = ../..

include $(ROOT)/rules/config.mk
include $(ROOT)/rules/setup.mk

OBJDIR := $(ROOT)/$(OUTPUT)/$(LIBCORE)
TARGET = $(ROOT)/$(OUTPUT)/$(LIBCORE)$(LIB_SUFFIX)

include objects.mk

OBJECTS = $(OBJS_CORE) $(OBJS_SPIFFS) $(OBJS_LIBB64) $(OBJS_MALLOC)
OBJS := $(addprefix $(OBJDIR)/, $(OBJECTS))

DEPS=$(OBJS:.o=.d)
TEMP=$(OBJS:.o=.ar)

include flags.mk

all: $(OBJS) $(TEMP)

compile: $(OBJS)

link: $(TEMP)

clean:
	@$(LOG) "Clean $(LIBCORE)"
	@$(RM) $(TARGET)
	@$(RM) $(OBJS)
	@$(RM) $(DEPS)
	@$(RM) $(TEMP)
	@$(RMDIR) $(OBJDIR)

Updater_Signing.h:
	@$(LOG) "$@"
	@$(PYTHON) $(SIGNING) --mode header --publickey public.key --out $@

$(OBJS): | $(OBJDIR)

$(OBJDIR):
	@$(LOG) "Create $@"
	@$(MKDIR) $@

$(OBJDIR)/%.cpp.o: $(ESP8266_CORES)/%.cpp Updater_Signing.h
	@$(LOG) "(CXX) $@"
	@$(CXX) $(CFLAGS) $< -o $@

$(OBJDIR)/%.cpp.o: $(ESP8266_CORES)/libb64/%.cpp Updater_Signing.h
	@$(LOG) "(CXX) $@"
	@$(CXX) $(CFLAGS) $< -o $@

$(OBJDIR)/%.cpp.o: $(ESP8266_CORES)/spiffs/%.cpp Updater_Signing.h
	@$(LOG) "(CXX) $@"
	@$(CXX) $(CFLAGS) $< -o $@

$(OBJDIR)/%.cpp.o: $(ESP8266_CORES)/umm_malloc/%.cpp Updater_Signing.h
	@$(LOG) "(CXX) $@"
	@$(CXX) $(CFLAGS) $< -o $@

$(OBJDIR)/%.S.o: $(ESP8266_CORES)/%.S Updater_Signing.h
	@$(LOG) "(GCC) $@"
	@$(GCC) $(ASMFLAGS) $< -o $@

$(OBJDIR)/%.cpp.ar: $(OBJDIR)/%.cpp.o $(OBJS)
	@$(LOG) "(AR) $< -> $(TARGET)"
	@$(AR) cru $(TARGET) $<
	@echo 1 > $@

$(OBJDIR)/%.S.ar: $(OBJDIR)/%.S.o $(OBJS)
	@$(LOG) "(AR) $< -> $(TARGET)"
	@$(AR) cru $(TARGET) $<
	@echo 1 > $@

include depends.mk

-include $(DEPS)

.PHONY: all clean
