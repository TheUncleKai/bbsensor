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

OBJS_CORE_C := ${SOURCES_CORE_C:.c=.c.o}
OBJS_CORE_C := ${subst $(SRCDIR),$(OBJDIR),$(OBJS_CORE_C)}

OBJS_CORE_LIBB64_C := ${SOURCES_CORE_LIBB64_C:.c=.c.o}
OBJS_CORE_LIBB64_C := ${subst $(SRCDIR)/libb64,$(OBJDIR),$(OBJS_CORE_LIBB64_C)}

OBJS_CORE_CPP := ${SOURCES_CORE_CPP:.cpp=.cpp.o}
OBJS_CORE_CPP := ${subst $(SRCDIR),$(OBJDIR),$(OBJS_CORE_CPP)}

# =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

OBJS := $(OBJS_CORE_C) $(OBJS_CORE_LIBB64_C) $(OBJS_CORE_CPP) 
ARS := $(OBJS:.o=.ar)
