cmake_minimum_required(VERSION 3.14 FATAL_ERROR)

set(CMAKE_MODULE_PATH ${PROJECT_SOURCE_DIR}/cmake)

include(cmake/config.cmake)
include(cmake/path.cmake)
include(cmake/esp8266.cmake)
include(cmake/log.cmake)

project("BBSensor")

set(EXECUTABLE_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/bin CACHE STRING "Do not change this setting." FORCE)

set(PATH_CORE "${PROJECT_SOURCE_DIR}/src/core")

add_subdirectory (src/core)
