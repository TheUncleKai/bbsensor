cmake_minimum_required(VERSION 3.14 FATAL_ERROR)

set(CMAKE_MODULE_PATH ${PROJECT_SOURCE_DIR}/cmake)
include(cmake/ESP8266.cmake)

MESSAGE(STATUS " Root:       ${ARDUINO_ROOT}")
MESSAGE(STATUS " AVR:        ${ARDUINO_AVR_ROOT}")
MESSAGE(STATUS " --------")
MESSAGE(STATUS " Cores:      ${ARDUINO_INCLUDE_CORES}")
MESSAGE(STATUS " Variants:   ${ARDUINO_INCLUDE_VARIANTS}")
MESSAGE(STATUS " --------")
MESSAGE(STATUS " Includes:   ${ARDUINO_INCLUDES}")
MESSAGE(STATUS " Defines:    ${ARDUINO_DEFINES}")
MESSAGE(STATUS " Flags:      ${ARDUINO_FLAGS}")
MESSAGE(STATUS " C-Flags:    ${ARDUINO_C_FLAGS}")
MESSAGE(STATUS " CXX-Flags:  ${ARDUINO_CXX_FLAGS}")

include(cmake/AVR.cmake)

project("BBExposure")

set(EXECUTABLE_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/bin CACHE STRING "Do not change this setting." FORCE)

set(PATH_CORE "${PROJECT_SOURCE_DIR}/ext/core")
set(PATH_JM_LIQUIDCRYSTAL_I2C "${PROJECT_SOURCE_DIR}/ext/jm_LiquidCrystal_I2C")
set(PATH_JM_SCHEDULER "${PROJECT_SOURCE_DIR}/ext/jm_Scheduler")
set(PATH_JM_WIRE "${PROJECT_SOURCE_DIR}/ext/jm_Wire")
set(PATH_SERVO "${PROJECT_SOURCE_DIR}/ext/Servo")
set(PATH_LEDCONTROL "${PROJECT_SOURCE_DIR}/ext/LedControl/src")

add_subdirectory (ext/core)
add_subdirectory (ext/jm_LiquidCrystal_I2C)
add_subdirectory (ext/jm_Scheduler)
add_subdirectory (ext/jm_Wire)
add_subdirectory (ext/LedControl)
add_subdirectory (src)
