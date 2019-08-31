# Makefile for corelib

ROOT = ..

include $(ROOT)/rules/config.mk
include $(ROOT)/rules/setup.mk

NAME = sensor

ELF = $(NAME).elf
BIN = $(NAME).bin
MAP = $(NAME).map
SIZES = $(NAME).txt
LD = local.eagle.app.v6.common.ld

DEPS=$(OBJS:.o=.d)

include objects.mk

CFLAGS = \
	-D__ets__ -DICACHE_FLASH -U__STRICT_ANSI__ \
	$(ESP8266_INCLUDE_SDK) -I../ext/core -I. \
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
	-DARDUINO_BOARD=\"ESP8266_NODEMCU\" \
	-DFLASHMODE_DIO \
	-DESP8266 \
	$(ESP8266_INCLUDE_CORES) \
	$(ESP8266_INCLUDE_VARIANTS)

LDFLAGS = \
	-fno-exceptions -Wl,-Map "-Wl,$(MAP)" -g -Os -nostdlib -Wl,--no-check-sections -u app_entry -u _printf_float -u _scanf_float \
	-Wl,-static -L$(ESP8266_SDK)/lib -L$(ESP8266_SDK)/lib/NONOSDK221 -L$(ESP8266_SDK)/ld -L$(ESP8266_SDK)/libc/xtensa-lx106-elf/lib \
	-Teagle.flash.4m1m.ld -Wl,--gc-sections -Wl,-wrap,system_restart_local -Wl,-wrap,spi_flash_read

LDLIBS = \
	-lhal -lphy -lpp -lnet80211 -llwip2-536-feat -lwpa -lcrypto -lmain -lwps -lbearssl -laxtls -lespnow -lsmartconfig -lairkiss -lwpa2 -lstdc++ -lm -lc -lgcc

all: $(OBJS) $(ELF) $(BIN) $(SIZES) $(LD)

clean:
	@$(RM) $(OBJS)
	@$(RM) $(MAP)
	@$(RM) $(DEPS)
	@$(RM) $(LD)
	@$(RM) $(ELF)
	@$(RM) $(BIN)
	@$(RM) $(SIZES)

%.o: %.cpp
	@echo "	 ==> $@"
	@$(CXX) $(CFLAGS) $< -o $@

$(LD): $(ESP8266_SDK)/ld/eagle.app.v6.common.ld.h
	@echo "	 ==> $@"
	@$(GCC) -CC -E -P -DVTABLES_IN_FLASH $< -o $@

$(ELF): $(OBJS) $(LD)
	@echo "	 ==> $@"
	@$(GCC) $(LDFLAGS) -o $@ -Wl,--start-group $(OBJS) ../ext/core/core.a $(LDLIBS) -Wl,--end-group

$(BIN): $(ELF)
	@echo "	 ==> $@"
	@$(PYTHON) $(ELF2BIN) --eboot "$(ESP8266_PATH)/hardware/esp8266/2.5.2/bootloaders/eboot/eboot.elf" --app $< --flash_mode dio --flash_freq 40 --flash_size 4M --path $(ESP8266_BIN) --out $@
    @$(PYTHON) $(SIGNING) --mode sign --privatekey private.key --bin $@ --out $@.signed

$(SIZES): $(BIN)
	@echo "	 ==> Size"
	@$(SIZE) -A $(ELF) > $@

-include $(DEPS)

.PHONY: all clean
