@echo off
set CORE=C:\Users\kai\AppData\Local\Arduino15\packages\esp8266\hardware\esp8266\2.5.2\cores\esp8266

del *.S
del *.cpp

del libb64\*.cpp
del spiffs\*.cpp
del umm_malloc\*.cpp

rd libb64
rd spiffs
rd umm_malloc
