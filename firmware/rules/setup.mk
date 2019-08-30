ESP8266_INCLUDE_SDK = -I$(ESP8266_SDK)/include -I$(ESP8266_SDK)/lwip2/include -I$(ESP8266_SDK)/libc/xtensa-lx106-elf/include
ESP8266_INCLUDE_CORES = -I$(ESP8266_CORES)
ESP8266_INCLUDE_VARIANTS = -I$(ESP8266_VARIANTS)

ESP8266_LIB = -L$(ESP8266_SDK)/lib -L$(ESP8266_SDK)/lib/NONOSDK221 -L$(ESP8266_SDK)/ld -L$(ESP8266_SDK)/libc/xtensa-lx106-elf/lib
ESP8266_INCLUDES = $(ESP8266_INCLUDE_CORES) $(ESP8266_INCLUDE_CORES) $(ESP8266_INCLUDE_VARIANTS)

GCC = $(ESP8266_BIN)/$(ESP8266_GCC_PREFIX)-gcc.exe
CXX = $(ESP8266_BIN)/$(ESP8266_GCC_PREFIX)-g++.exe
AR = $(ESP8266_BIN)/$(ESP8266_GCC_PREFIX)-ar.exe
RANLIB = $(ESP8266_BIN)/$(ESP8266_GCC_PREFIX)-ranlib.exe
OBJCOPY = $(ESP8266_BIN)/$(ESP8266_GCC_PREFIX)-objcopy.exe
SIZE = $(ESP8266_BIN)/$(ESP8266_GCC_PREFIX)-size.exe
