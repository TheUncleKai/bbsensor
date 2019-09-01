ESP8266_INCLUDE_SDK      = -I$(ESP8266_SDK)/include -I$(ESP8266_SDK)/lwip2/include -I$(ESP8266_SDK)/libc/xtensa-lx106-elf/include
ESP8266_INCLUDE_CORE     = -I$(ESP8266_CORE)
ESP8266_INCLUDE_VARIANTS = -I$(ESP8266_VARIANTS)

ESP8266_LIB      = -L$(ESP8266_SDK)/lib -L$(ESP8266_SDK)/lib/NONOSDK221 -L$(ESP8266_SDK)/ld -L$(ESP8266_SDK)/libc/xtensa-lx106-elf/lib
ESP8266_INCLUDES = $(ESP8266_INCLUDE_SDK) $(ESP8266_INCLUDE_CORE) $(ESP8266_INCLUDE_VARIANTS)

GCC     = $(ESP8266_BIN)/$(ESP8266_GCC_PREFIX)-gcc$(EXEEXT)
CXX     = $(ESP8266_BIN)/$(ESP8266_GCC_PREFIX)-g++$(EXEEXT)
AR      = $(ESP8266_BIN)/$(ESP8266_GCC_PREFIX)-ar$(EXEEXT)
RANLIB  = $(ESP8266_BIN)/$(ESP8266_GCC_PREFIX)-ranlib$(EXEEXT)
OBJCOPY = $(ESP8266_BIN)/$(ESP8266_GCC_PREFIX)-objcopy$(EXEEXT)
SIZE    = $(ESP8266_BIN)/$(ESP8266_GCC_PREFIX)-size$(EXEEXT)
SIGNING = $(TOOLS)/signing.py
ELF2BIN = $(TOOLS)/elf2bin.py
UPLOAD  = $(TOOLS)/upload.py

INFORM = $(ECHO) "\e[1;31m Info:\e[0;0m ==>\t"
LOG    = $(ECHO) "\e[1;34m       ==>\e[0;0m\t"

LIB_SUFFIX = .a
OUTPUT     = build
LIBCORE    = libcore
APP        = sensor
