@echo off
set CORE=C:\Users\kai\AppData\Local\Arduino15\packages\esp8266\hardware\esp8266\2.5.2\cores\esp8266

copy %CORE%\cont.S . /Y . /Y
copy %CORE%\StreamString.cpp . /Y
copy %CORE%\heap.cpp . /Y
copy %CORE%\abi.cpp . /Y
copy %CORE%\core_esp8266_phy.cpp . /Y
copy %CORE%\base64.cpp . /Y
copy %CORE%\core_esp8266_noniso.cpp . /Y
copy %CORE%\libc_replacements.cpp . /Y
copy %CORE%\gdb_hooks.cpp . /Y
copy %CORE%\core_esp8266_timer.cpp . /Y
copy %CORE%\Tone.cpp . /Y
copy %CORE%\sntp-lwip2.cpp . /Y
copy %CORE%\core_esp8266_si2c.cpp . /Y
copy %CORE%\core_esp8266_waveform.cpp . /Y
copy %CORE%\core_esp8266_sigma_delta.cpp . /Y
copy %CORE%\cbuf.cpp . /Y
copy %CORE%\core_esp8266_postmortem.cpp . /Y
copy %CORE%\spiffs_api.cpp . /Y
copy %CORE%\cont_util.cpp . /Y
copy %CORE%\spiffs_hal.cpp . /Y
copy %CORE%\core_esp8266_app_entry_noextra4k.cpp . /Y
copy %CORE%\debug.cpp . /Y
copy %CORE%\time.cpp . /Y
copy %CORE%\Updater.cpp . /Y
copy %CORE%\core_esp8266_wiring.cpp . /Y
copy %CORE%\WString.cpp . /Y
copy %CORE%\core_esp8266_eboot_command.cpp . /Y
copy %CORE%\Esp-frag.cpp . /Y
copy %CORE%\core_esp8266_flash_utils.cpp . /Y
copy %CORE%\FS.cpp . /Y
copy %CORE%\libb64\cdecode.cpp . /Y
copy %CORE%\core_esp8266_wiring_shift.cpp . /Y
copy %CORE%\HardwareSerial.cpp . /Y
copy %CORE%\core_esp8266_wiring_analog.cpp . /Y
copy %CORE%\core_esp8266_wiring_pulse.cpp . /Y
copy %CORE%\core_esp8266_wiring_pwm.cpp . /Y
copy %CORE%\libb64\cencode.cpp . /Y
copy %CORE%\ScheduledFunctions.cpp . /Y
copy %CORE%\Schedule.cpp . /Y
copy %CORE%\FunctionalInterrupt.cpp . /Y
copy %CORE%\WMath.cpp . /Y
copy %CORE%\IPAddress.cpp . /Y
copy %CORE%\Esp-version.cpp . /Y
copy %CORE%\StackThunk.cpp . /Y
copy %CORE%\spiffs\spiffs_check.cpp . /Y
copy %CORE%\spiffs\spiffs_gc.cpp . /Y
copy %CORE%\MD5Builder.cpp . /Y
copy %CORE%\Stream.cpp . /Y
copy %CORE%\spiffs\spiffs_nucleus.cpp . /Y
copy %CORE%\Print.cpp . /Y
copy %CORE%\spiffs\spiffs_hydrogen.cpp . /Y
copy %CORE%\sqrt32.cpp . /Y
copy %CORE%\core_esp8266_i2s.cpp . /Y
copy %CORE%\core_esp8266_wiring_digital.cpp . /Y
copy %CORE%\Esp.cpp . /Y
copy %CORE%\umm_malloc\umm_malloc.cpp . /Y
copy %CORE%\spiffs\spiffs_cache.cpp . /Y
copy %CORE%\core_esp8266_main.cpp . /Y
copy %CORE%\uart.cpp . /Y