
set(core_SOURCES
    ${ESP8266_CORES}/cont.S
    ${ESP8266_CORES}/abi.cpp
    ${ESP8266_CORES}/base64.cpp
    ${ESP8266_CORES}/cbuf.cpp
    ${ESP8266_CORES}/cont_util.cpp
    ${ESP8266_CORES}/core_esp8266_app_entry_noextra4k.cpp
    ${ESP8266_CORES}/core_esp8266_eboot_command.cpp
    ${ESP8266_CORES}/core_esp8266_flash_utils.cpp
    ${ESP8266_CORES}/core_esp8266_i2s.cpp
    ${ESP8266_CORES}/core_esp8266_main.cpp
    ${ESP8266_CORES}/core_esp8266_noniso.cpp
    ${ESP8266_CORES}/core_esp8266_phy.cpp
    ${ESP8266_CORES}/core_esp8266_postmortem.cpp
    ${ESP8266_CORES}/core_esp8266_si2c.cpp
    ${ESP8266_CORES}/core_esp8266_sigma_delta.cpp
    ${ESP8266_CORES}/core_esp8266_timer.cpp
    ${ESP8266_CORES}/core_esp8266_waveform.cpp
    ${ESP8266_CORES}/core_esp8266_wiring_analog.cpp
    ${ESP8266_CORES}/core_esp8266_wiring_digital.cpp
    ${ESP8266_CORES}/core_esp8266_wiring_pulse.cpp
    ${ESP8266_CORES}/core_esp8266_wiring_pwm.cpp
    ${ESP8266_CORES}/core_esp8266_wiring_shift.cpp
    ${ESP8266_CORES}/core_esp8266_wiring.cpp
    ${ESP8266_CORES}/debug.cpp
    ${ESP8266_CORES}/Esp-frag.cpp
    ${ESP8266_CORES}/Esp-version.cpp
    ${ESP8266_CORES}/Esp.cpp
    ${ESP8266_CORES}/FS.cpp
    ${ESP8266_CORES}/FunctionalInterrupt.cpp
    ${ESP8266_CORES}/gdb_hooks.cpp
    ${ESP8266_CORES}/HardwareSerial.cpp
    ${ESP8266_CORES}/heap.cpp
    ${ESP8266_CORES}/IPAddress.cpp
    ${ESP8266_CORES}/libb64/cdecode.cpp
    ${ESP8266_CORES}/libb64/cencode.cpp
    ${ESP8266_CORES}/libc_replacements.cpp
    ${ESP8266_CORES}/MD5Builder.cpp
    ${ESP8266_CORES}/Print.cpp
    ${ESP8266_CORES}/Schedule.cpp
    ${ESP8266_CORES}/ScheduledFunctions.cpp
    ${ESP8266_CORES}/sntp-lwip2.cpp
    ${ESP8266_CORES}/spiffs_api.cpp
    ${ESP8266_CORES}/spiffs_hal.cpp
    ${ESP8266_CORES}/spiffs/spiffs_cache.cpp
    ${ESP8266_CORES}/spiffs/spiffs_check.cpp
    ${ESP8266_CORES}/spiffs/spiffs_gc.cpp
    ${ESP8266_CORES}/spiffs/spiffs_hydrogen.cpp
    ${ESP8266_CORES}/spiffs/spiffs_nucleus.cpp
    ${ESP8266_CORES}/sqrt32.cpp
    ${ESP8266_CORES}/StackThunk.cpp
    ${ESP8266_CORES}/Stream.cpp
    ${ESP8266_CORES}/StreamString.cpp
    ${ESP8266_CORES}/time.cpp
    ${ESP8266_CORES}/Tone.cpp
    ${ESP8266_CORES}/uart.cpp
    ${ESP8266_CORES}/umm_malloc/umm_malloc.cpp
    ${ESP8266_CORES}/Updater.cpp
    ${ESP8266_CORES}/WMath.cpp
    ${ESP8266_CORES}/WString.cpp
)

SET(CMAKE_ASM_FLAGS "-D__ets__ -DICACHE_FLASH -U__STRICT_ANSI__"
                    "${ESP8266_INCLUDE_SDK}"
                    "-c -g -x assembler-with-cpp -MMD -mlongcalls"
                    "-DNONOSDK221=1 -DF_CPU=80000000L -DLWIP_OPEN_SRC -DTCP_MSS=536 -DLWIP_FEATURES=1 -DLWIP_IPV6=0"
                    "-DDEBUG_ESP_PORT=Serial -DARDUINO=10809 -DARDUINO_ESP8266_NODEMCU -DARDUINO_ARCH_ESP8266"
                    "-DARDUINO_BOARD=\"ESP8266_NODEMCU\" -DFLASHMODE_DIO -DESP8266"
                    "${ESP8266_INCLUDE_CORES} ${ESP8266_INCLUDE_VARIANTS}")

SET(CMAKE_CXX_FLAGS "-D__ets__ -DICACHE_FLASH -U__STRICT_ANSI__ ${ESP8266_INCLUDE_SDK}"
                    "-c -Os -g -mlongcalls -mtext-section-literals -fno-rtti -falign-functions=4 -std=c++11 -MMD"
                    "-ffunction-sections -fdata-sections -fno-exceptions"
                    "-DNONOSDK221=1 -DF_CPU=80000000L -DLWIP_OPEN_SRC -DTCP_MSS=536 -DLWIP_FEATURES=1 -DLWIP_IPV6=0"
                    "-DDEBUG_ESP_PORT=Serial -DARDUINO=10809 -DARDUINO_ESP8266_NODEMCU -DARDUINO_ARCH_ESP8266"
                    "-DARDUINO_BOARD=\"ESP8266_NODEMCU\" -DFLASHMODE_DIO -DESP8266"
                    "${ESP8266_INCLUDE_CORES} ${ESP8266_INCLUDE_VARIANTS}")

add_library(core STATIC ${core_SOURCES})
