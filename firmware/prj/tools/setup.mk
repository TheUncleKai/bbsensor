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

GCC      = $(GCC_BIN)/$(GCC_PREFIX)-gcc$(EXEEXT)
CXX      = $(GCC_BIN)/$(GCC_PREFIX)-g++$(EXEEXT)
AR       = $(GCC_BIN)/$(GCC_PREFIX)-ar$(EXEEXT)
RANLIB   = $(GCC_BIN)/$(GCC_PREFIX)-ranlib$(EXEEXT)
OBJCOPY  = $(GCC_BIN)/$(GCC_PREFIX)-objcopy$(EXEEXT)
SIZE     = $(GCC_BIN)/$(GCC_PREFIX)-size$(EXEEXT)

MAKEFILE = $(ROOT)/prj/tools/libmake.mk
