
SOURCES_CORE = \
    $(ESP8266_CORE)/cont.S \
    $(ESP8266_CORE)/abi.cpp \
    $(ESP8266_CORE)/base64.cpp \
    $(ESP8266_CORE)/cbuf.cpp \
    $(ESP8266_CORE)/cont_util.cpp \
    $(ESP8266_CORE)/core_esp8266_app_entry_noextra4k.cpp \
    $(ESP8266_CORE)/core_esp8266_eboot_command.cpp \
    $(ESP8266_CORE)/core_esp8266_flash_utils.cpp \
    $(ESP8266_CORE)/core_esp8266_i2s.cpp \
    $(ESP8266_CORE)/core_esp8266_main.cpp \
    $(ESP8266_CORE)/core_esp8266_noniso.cpp \
    $(ESP8266_CORE)/core_esp8266_phy.cpp \
    $(ESP8266_CORE)/core_esp8266_postmortem.cpp \
    $(ESP8266_CORE)/core_esp8266_si2c.cpp \
    $(ESP8266_CORE)/core_esp8266_sigma_delta.cpp \
    $(ESP8266_CORE)/core_esp8266_timer.cpp \
    $(ESP8266_CORE)/core_esp8266_waveform.cpp \
    $(ESP8266_CORE)/core_esp8266_wiring_analog.cpp \
    $(ESP8266_CORE)/core_esp8266_wiring_digital.cpp \
    $(ESP8266_CORE)/core_esp8266_wiring_pulse.cpp \
    $(ESP8266_CORE)/core_esp8266_wiring_pwm.cpp \
    $(ESP8266_CORE)/core_esp8266_wiring_shift.cpp \
    $(ESP8266_CORE)/core_esp8266_wiring.cpp \
    $(ESP8266_CORE)/debug.cpp \
    $(ESP8266_CORE)/Esp-frag.cpp \
    $(ESP8266_CORE)/Esp-version.cpp \
    $(ESP8266_CORE)/Esp.cpp \
    $(ESP8266_CORE)/FS.cpp \
    $(ESP8266_CORE)/FunctionalInterrupt.cpp \
    $(ESP8266_CORE)/gdb_hooks.cpp \
    $(ESP8266_CORE)/HardwareSerial.cpp \
    $(ESP8266_CORE)/heap.cpp \
    $(ESP8266_CORE)/IPAddress.cpp \
    $(ESP8266_CORE)/libc_replacements.cpp \
    $(ESP8266_CORE)/MD5Builder.cpp \
    $(ESP8266_CORE)/Print.cpp \
    $(ESP8266_CORE)/Schedule.cpp \
    $(ESP8266_CORE)/ScheduledFunctions.cpp \
    $(ESP8266_CORE)/sntp-lwip2.cpp \
    $(ESP8266_CORE)/spiffs_api.cpp \
    $(ESP8266_CORE)/spiffs_hal.cpp \
    $(ESP8266_CORE)/sqrt32.cpp \
    $(ESP8266_CORE)/StackThunk.cpp \
    $(ESP8266_CORE)/Stream.cpp \
    $(ESP8266_CORE)/StreamString.cpp \
    $(ESP8266_CORE)/time.cpp \
    $(ESP8266_CORE)/Tone.cpp \
    $(ESP8266_CORE)/uart.cpp \
    $(ESP8266_CORE)/Updater.cpp \
    $(ESP8266_CORE)/WMath.cpp \
    $(ESP8266_CORE)/WString.cpp

SOURCES_LIBB64 = \
    $(ESP8266_CORE)/libb64/cdecode.cpp \
    $(ESP8266_CORE)/libb64/cencode.cpp

SOURCES_MALLOC = \
    $(ESP8266_CORE)/umm_malloc/umm_malloc.cpp

SOURCES_SPIFFS = \
    $(ESP8266_CORE)/spiffs/spiffs_cache.cpp \
    $(ESP8266_CORE)/spiffs/spiffs_check.cpp \
    $(ESP8266_CORE)/spiffs/spiffs_gc.cpp \
    $(ESP8266_CORE)/spiffs/spiffs_hydrogen.cpp \
    $(ESP8266_CORE)/spiffs/spiffs_nucleus.cpp
