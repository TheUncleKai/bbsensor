# this one is important
set(CMAKE_SYSTEM_NAME Generic)
#this one not so much
set(CMAKE_SYSTEM_VERSION 1)

set(COMPILER_PREFIX "avr")

# where is the target environment 
# specify the cross compiler

find_program(CMAKE_C_COMPILER NAMES ${COMPILER_PREFIX}-gcc.exe)
find_program(CMAKE_CXX_COMPILER NAMES ${COMPILER_PREFIX}-g++.exe)
find_program(CMAKE_AR NAMES ${COMPILER_PREFIX}-gcc-ar.exe)
find_program(CMAKE_RANLIB NAMES ${COMPILER_PREFIX}-gcc-ranlib.exe)
find_program(CMAKE_OBJCOPY NAMES ${COMPILER_PREFIX}-objcopy.exe)
find_program(CMAKE_SIZE NAMES ${COMPILER_PREFIX}-size.exe)

set(CMAKE_FIND_ROOT_PATH  ${ARDUINO_AVR_ROOT})

# search for programs in the build host directories
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)

# for libraries and headers in the target directories
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
