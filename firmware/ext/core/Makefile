# Makefile for corelib

ROOT = ../..

include $(ROOT)/rules/config.mk
include $(ROOT)/rules/setup.mk

LIB = core.a

CORE = core
SPIFFS = spiffs
LIBB64 = libb64
MALLOC = umm_malloc

include objects.mk

OBJECTS = $(OBJS_CORE) $(OBJS_SPIFFS) $(OBJS_LIBB64) $(OBJS_MALLOC)

OBJDIR := objdir
OBJS := $(addprefix $(OBJDIR)/, $(OBJECTS))

DEPS=$(OBJS:.o=.d)
TEMP=$(OBJS:.o=.ar)


ASMFLAGS = \
	-D__ets__ -DICACHE_FLASH -U__STRICT_ANSI__ \
	$(ESP8266_INCLUDE_SDK) -I. \
	-c -g -x assembler-with-cpp -MMD -mlongcalls \
	-DNONOSDK221=1 \
	-DF_CPU=80000000L \
	-DLWIP_OPEN_SRC \
	-DTCP_MSS=536 \
	-DLWIP_FEATURES=1 \
	-DLWIP_IPV6=0 \
	-DDEBUG_ESP_PORT=Serial \
	-DARDUINO=10809 \
	-DARDUINO_ESP8266_NODEMCU \
	-DARDUINO_ARCH_ESP8266 \
	-DARDUINO_BOARD=\"ESP8266_NODEMCU\" \
	-DFLASHMODE_DIO -DESP8266 \
	$(ESP8266_INCLUDE_CORES) \
	$(ESP8266_INCLUDE_VARIANTS)

CFLAGS = \
	-D__ets__ -DICACHE_FLASH -U__STRICT_ANSI__ \
	$(ESP8266_INCLUDE_SDK) -I. \
	-c -Os -g -mlongcalls -mtext-section-literals \
	-fno-rtti -falign-functions=4 -std=c++11 -MMD -ffunction-sections -fdata-sections -fno-exceptions \
	-DNONOSDK221=1 \
	-DF_CPU=80000000L \
	-DLWIP_OPEN_SRC \
	-DTCP_MSS=536 \
	-DLWIP_FEATURES=1 \
	-DLWIP_IPV6=0 \
	-DDEBUG_ESP_PORT=Serial \
	-DARDUINO=10809 \
	-DARDUINO_ESP8266_NODEMCU \
	-DARDUINO_ARCH_ESP8266 \
	-DARDUINO_BOARD=\"ESP8266_NODEMCU\"\
	-DFLASHMODE_DIO \
	-DESP8266 \
	$(ESP8266_INCLUDE_CORES) \
	$(ESP8266_INCLUDE_VARIANTS)


all: $(OBJS) $(TEMP)

clean:
	@$(RM) $(LIB)

Updater_Signing.h:
	@echo "	 ==> $@"
	@$(PYTHON) $(SIGNING) --mode header --publickey public.key --out $@

$(OBJS): | $(OBJDIR)

$(OBJDIR):
	@$(MKDIR) $(OBJDIR)

$(OBJDIR)/%.cpp.o: $(ESP8266_CORES)/%.cpp Updater_Signing.h
	@echo "	(CXX) ==> $@"
	@$(CXX) $(CFLAGS) $< -o $@

$(OBJDIR)/%.cpp.o: $(ESP8266_CORES)/libb64/%.cpp Updater_Signing.h
	@echo "	(CXX) ==> $@"
	@$(CXX) $(CFLAGS) $< -o $@

$(OBJDIR)/%.cpp.o: $(ESP8266_CORES)/spiffs/%.cpp Updater_Signing.h
	@echo "	(CXX) ==> $@"
	@$(CXX) $(CFLAGS) $< -o $@

$(OBJDIR)/%.cpp.o: $(ESP8266_CORES)/umm_malloc/%.cpp Updater_Signing.h
	@echo "	(CXX) ==> $@"
	@$(CXX) $(CFLAGS) $< -o $@

$(OBJDIR)/%.S.o: $(ESP8266_CORES)/%.S Updater_Signing.h
	@echo "	(GCC) ==> $@"
	@$(GCC) $(ASMFLAGS) $< -o $@

$(OBJDIR)/%.cpp.ar: $(OBJDIR)/%.cpp.o
	@echo "	(AR) ==> $< -> $(LIB)"
	@$(AR) cru $(LIB) $<
	@echo 1 > $@

$(OBJDIR)/%.S.ar: $(OBJDIR)/%.S.o
	@echo "	(AR) ==> $< -> $(LIB)"
	@$(AR) cru $(LIB) $<
	@echo 1 > $@

include depends_core.mk
include depends_libb64.mk
include depends_spiffs.mk
include depends_malloc.mk


-include $(DEPS)

.PHONY: all clean
