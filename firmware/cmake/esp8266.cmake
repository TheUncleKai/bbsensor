set(ESP8266_ROOT  "c:/Program Files (x86)/Arduino")
set(ESP8266_AVR_ROOT  "${ESP8266_ROOT}/hardware/tools/avr")

set(ESP8266_FLAGS  "-mmcu=atmega328p")
set(ESP8266_DEFINES  "-DF_CPU=16000000L -DARDUINO=10805 -DESP8266_AVR_NANO -DESP8266_ARCH_AVR")
set(ESP8266_INCLUDE_CORES  "${ESP8266_ROOT}/hardware/arduino/avr/cores/arduino")
set(ESP8266_INCLUDE_VARIANTS  "${ESP8266_ROOT}/hardware/arduino/avr/variants/eightanaloginputs")

set(ESP8266_INCLUDES "-I\"${ESP8266_INCLUDE_CORES}\" -I\"${ESP8266_INCLUDE_VARIANTS}\"")
set(ESP8266_C_FLAGS "-g -Os  -std=gnu11 -ffunction-sections -fdata-sections -MMD -flto -fno-fat-lto-objects")
set(ESP8266_CXX_FLAGS "-g -Os  -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -MMD -flto")
