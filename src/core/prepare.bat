@echo off
set CORE=C:\Users\kai\AppData\Local\Arduino15\packages\esp8266\hardware\esp8266\2.5.2\cores\esp8266

copy %CORE%\*.S . /Y
copy %CORE%\*.cpp . /Y

md libb64
copy %CORE%\libb64\*.cpp libb64\ /Y

md spiffs
copy %CORE%\spiffs\*.cpp spiffs\ /Y

md umm_malloc
copy %CORE%\umm_malloc\*.cpp umm_malloc\ /Y

