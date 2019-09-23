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

OBJS_CORE_ASM := ${SOURCES_CORE_ASM:.S=.S.o}
OBJS_CORE_ASM := ${subst $(SRCDIR),$(OBJDIR),$(OBJS_CORE_ASM)}

OBJS_CORE_CPP := ${SOURCES_CORE_CPP:.cpp=.cpp.o}
OBJS_CORE_CPP := ${subst $(SRCDIR),$(OBJDIR),$(OBJS_CORE_CPP)}

OBJS_LIBB64 := ${SOURCES_LIBB64:.cpp=.cpp.o}
OBJS_LIBB64 := ${subst $(SRCDIR)/libb64,$(OBJDIR),$(OBJS_LIBB64)}

OBJS_MALLOC := ${SOURCES_MALLOC:.cpp=.cpp.o}
OBJS_MALLOC := ${subst $(SRCDIR)/umm_malloc,$(OBJDIR),$(OBJS_MALLOC)}

OBJS_SPIFFS := ${SOURCES_SPIFFS:.cpp=.cpp.o}
OBJS_SPIFFS := ${subst $(SRCDIR)/spiffs,$(OBJDIR),$(OBJS_SPIFFS)}

# =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

OBJS := $(OBJS_CORE_ASM) $(OBJS_CORE_CPP) $(OBJS_SPIFFS) $(OBJS_LIBB64) $(OBJS_MALLOC)
ARS := $(OBJS:.o=.ar)
