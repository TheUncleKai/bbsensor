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

LOGTIME = echo `date +%Y-%m-%d/%H:%M:%S`":"
INFORM  = $(ECHO) "\e[1;31m Info:\e[0;0m ==>\t"
LOG     = $(ECHO) "\e[1;34m       ==>\e[0;0m\t"

LOGFILE    = $(ROOT)/$(OUTPUT)/$(LOGGING)
LOGOUT     = 2>&1 | tee -a $(LOGFILE)
LOGONLY    = >> $(LOGFILE)
