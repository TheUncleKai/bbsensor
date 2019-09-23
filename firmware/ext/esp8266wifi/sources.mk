# Copyright (C) 2019, Kai Raphahn
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

SOURCES = \
    $(ESP8266_WIFI)/BearSSLHelpers.cpp \
    $(ESP8266_WIFI)/CertStoreBearSSL.cpp \
    $(ESP8266_WIFI)/ESP8266WiFi.cpp \
    $(ESP8266_WIFI)/ESP8266WiFiAP.cpp \
    $(ESP8266_WIFI)/ESP8266WiFiGeneric.cpp \
    $(ESP8266_WIFI)/ESP8266WiFiMulti.cpp \
    $(ESP8266_WIFI)/ESP8266WiFiScan.cpp \
    $(ESP8266_WIFI)/ESP8266WiFiSTA.cpp \
    $(ESP8266_WIFI)/ESP8266WiFiSTA-WPS.cpp \
    $(ESP8266_WIFI)/WiFiClient.cpp \
    $(ESP8266_WIFI)/WiFiClientSecureAxTLS.cpp \
    $(ESP8266_WIFI)/WiFiClientSecureBearSSL.cpp \
    $(ESP8266_WIFI)/WiFiServer.cpp \
    $(ESP8266_WIFI)/WiFiServerSecureAxTLS.cpp \
    $(ESP8266_WIFI)/WiFiServerSecureBearSSL.cpp \
    $(ESP8266_WIFI)/WiFiUdp.cpp
