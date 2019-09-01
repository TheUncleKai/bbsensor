# Flags for C++ and linker

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
	$(ESP8266_INCLUDE_CORE) \
	$(ESP8266_INCLUDE_VARIANTS)

LDFLAGS = \
	-fno-exceptions -Wl,-Map "-Wl,$(MAP)" -g -Os -nostdlib -Wl,--no-check-sections -u app_entry -u _printf_float -u _scanf_float \
	-Wl,-static -L$(ESP8266_SDK)/lib -L$(ESP8266_SDK)/lib/NONOSDK221 -L$(ESP8266_SDK)/ld -L$(ESP8266_SDK)/libc/xtensa-lx106-elf/lib \
	-Teagle.flash.4m1m.ld -Wl,--gc-sections -Wl,-wrap,system_restart_local -Wl,-wrap,spi_flash_read

LDLIBS = \
	$(ROOT)/$(OUTPUT)/$(LIBCORE)$(LIB_SUFFIX) \
	-lhal -lphy -lpp -lnet80211 -llwip2-536-feat -lwpa -lcrypto -lmain -lwps -lbearssl \
	-laxtls -lespnow -lsmartconfig -lairkiss -lwpa2 -lstdc++ -lm -lc -lgcc

UPLOADFLAGS = \
	--chip esp8266 --port $(PORT) --baud $(BAUD) --trace version --end \
	--chip esp8266 --port $(PORT) --baud $(BAUD) --trace write_flash 0x0
