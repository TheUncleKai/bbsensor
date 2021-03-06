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

CFLAGS_DEBUG = 

ifeq ($(DEBUG),PRINT)
CFLAGS_DEBUG += -DDEBUG_ESP32_PORT=Serial
endif

ifeq ($(DEBUG),LEVEL1)
CFLAGS_DEBUG += -DDEBUG_ESP32_PORT=Serial -DDEBUG_LEVEL1
endif

ifeq ($(DEBUG),LEVEL2)
CFLAGS_DEBUG += -DDEBUG_ESP32_PORT=Serial -DDEBUG_LEVEL1 -DDEBUG_LEVEL2
endif

ifeq ($(DEBUG),LEVEL3)
CFLAGS_DEBUG += -DDEBUG_ESP32_PORT=Serial -DDEBUG_LEVEL1 -DDEBUG_LEVEL2 -DDEBUG_LEVEL3
endif
