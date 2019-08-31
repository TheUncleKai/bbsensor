OBJS_CORE = \
	cont.S.o \
	abi.cpp.o \
	base64.cpp.o \
	cbuf.cpp.o \
	cont_util.cpp.o \
	core_esp8266_app_entry_noextra4k.cpp.o \
	core_esp8266_eboot_command.cpp.o \
	core_esp8266_flash_utils.cpp.o \
	core_esp8266_i2s.cpp.o \
	core_esp8266_main.cpp.o \
	core_esp8266_noniso.cpp.o \
	core_esp8266_phy.cpp.o \
	core_esp8266_postmortem.cpp.o \
	core_esp8266_si2c.cpp.o \
	core_esp8266_sigma_delta.cpp.o \
	core_esp8266_timer.cpp.o \
	core_esp8266_waveform.cpp.o \
	core_esp8266_wiring_analog.cpp.o \
	core_esp8266_wiring_digital.cpp.o \
	core_esp8266_wiring_pulse.cpp.o \
	core_esp8266_wiring_pwm.cpp.o \
	core_esp8266_wiring_shift.cpp.o \
	core_esp8266_wiring.cpp.o \
	debug.cpp.o \
	Esp-frag.cpp.o \
	Esp-version.cpp.o \
	Esp.cpp.o \
	FS.cpp.o \
	FunctionalInterrupt.cpp.o \
	gdb_hooks.cpp.o \
	HardwareSerial.cpp.o \
	heap.cpp.o \
	IPAddress.cpp.o \
	libc_replacements.cpp.o \
	MD5Builder.cpp.o \
	Print.cpp.o \
	Schedule.cpp.o \
	ScheduledFunctions.cpp.o \
	sntp-lwip2.cpp.o \
	spiffs_api.cpp.o \
	spiffs_hal.cpp.o \
	sqrt32.cpp.o \
	StackThunk.cpp.o \
	Stream.cpp.o \
	StreamString.cpp.o \
	time.cpp.o \
	Tone.cpp.o \
	uart.cpp.o \
	Updater.cpp.o \
	WMath.cpp.o \
	WString.cpp.o

OBJS_SPIFFS = \
	spiffs_cache.cpp.o \
	spiffs_check.cpp.o \
	spiffs_gc.cpp.o \
	spiffs_hydrogen.cpp.o \
	spiffs_nucleus.cpp.o

OBJS_LIBB64 = \
	cdecode.cpp.o \
	cencode.cpp.o

OBJS_MALLOC = \
	umm_malloc.cpp.o
