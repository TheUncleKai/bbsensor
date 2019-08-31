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

prepare:
	@$(LOG) "Copy $(APP)"
	@$(MKDIR) libb64
	@$(MKDIR) umm_malloc
	@$(MKDIR) spiffs
	@$(COPY) $(ESP8266_CORE)/*.S .
	@$(COPY) $(ESP8266_CORE)/*.h .
	@$(COPY) $(ESP8266_CORE)/*.cpp .
	@$(COPY) $(ESP8266_CORE)/libb64/*.h libb64/
	@$(COPY) $(ESP8266_CORE)/libb64/*.cpp libb64/
	@$(COPY) $(ESP8266_CORE)/umm_malloc/*.h umm_malloc/
	@$(COPY) $(ESP8266_CORE)/umm_malloc/*.cpp umm_malloc/
	@$(COPY) $(ESP8266_CORE)/spiffs/*.h spiffs/
	@$(COPY) $(ESP8266_CORE)/spiffs/*.cpp spiffs/

clean:
	@$(RM) $(TARGET)
	@$(RM) $(OBJS)
	@$(RM) $(DEPS)
	@$(RM) $(TEMP)
	@$(RMDIR) $(OBJDIR)
	@$(RM) *.S *.cpp *.h
	@$(RM) libb64/*.cpp libb64/*.h
	@$(RM) umm_malloc/*.cpp umm_malloc/*.h
	@$(RM) spiffs/*.cpp spiffs/*.h
	@$(RMDIR) libb64
	@$(RMDIR) umm_malloc
	@$(RMDIR) spiffs

Updater_Signing.h:
	@$(LOG) "$@"
	@$(PYTHON) $(SIGNING) --mode header --publickey public.key --out $@

$(OBJS): | $(OBJDIR)

$(OBJDIR):
	@$(LOG) "Create $@"
	@$(MKDIR) $@

$(OBJDIR)/%.cpp.o: $(ESP8266_CORE)/%.cpp Updater_Signing.h
	@$(LOG) "(CXX) $@"
	@$(CXX) $(CFLAGS) $< -o $@

$(OBJDIR)/%.cpp.o: $(ESP8266_CORE)/libb64/%.cpp Updater_Signing.h
	@$(LOG) "(CXX) $@"
	@$(CXX) $(CFLAGS) $< -o $@

$(OBJDIR)/%.cpp.o: $(ESP8266_CORE)/spiffs/%.cpp Updater_Signing.h
	@$(LOG) "(CXX) $@"
	@$(CXX) $(CFLAGS) $< -o $@

$(OBJDIR)/%.cpp.o: $(ESP8266_CORE)/umm_malloc/%.cpp Updater_Signing.h
	@$(LOG) "(CXX) $@"
	@$(CXX) $(CFLAGS) $< -o $@

$(OBJDIR)/%.S.o: $(ESP8266_CORE)/%.S Updater_Signing.h
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
