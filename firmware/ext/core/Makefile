# Makefile for corelib

ROOT = ../..

include $(ROOT)/rules/config.mk
include $(ROOT)/rules/setup.mk

TARGET = libcore.a

include objects.mk

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


all: $(OBJS)

clean:
	@$(RMDIR) *.o
	@$(RMDIR) *.d
	@$(RMDIR) *.a

Updater_Signing.h:
	@echo "  ==> $@"
	@$(PYTHON) $(SIGNING) --mode header --publickey public.key --out $@

%.o: $(ESP8266_CORES)/%.cpp Updater_Signing.h
	@echo "  ==> $@"
	@$(CXX) $(CFLAGS) $< -o $@
	@$(AR) cru $(TARGET) $@


%.o: $(ESP8266_CORES)/%.S Updater_Signing.h
	@echo "  ==> $@"
	@$(GCC) $(ASMFLAGS) $< -o $@
	@$(AR) cru $(TARGET) $@

include depends.mk

.PHONY: all clean
