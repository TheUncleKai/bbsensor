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

# =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
# C
$(OBJDIR)/%.c.o: $(SRCDIR)/%.c
	@$(LOG) "(GCC) $@"
	@$(MKDIR) $(FOLDER)
	@$(LOGTIME) $(GCC) $(CFLAGS) $(ADD_INCLUDE) $< -o $@ $(LOGONLY)
	@$(GCC) $(CFLAGS) $(ADD_INCLUDE) $< -o $@ $(LOGOUT)

# C++
$(OBJDIR)/%.cpp.o: $(SRCDIR)/%.cpp
	@$(LOG) "(CXX) $@"
	@$(MKDIR) $(FOLDER)
	@$(LOGTIME) $(CXX) $(CCFLAGS) $(ADD_INCLUDE) $< -o $@ $(LOGONLY)
	@$(CXX) $(CCFLAGS) $(ADD_INCLUDE) $< -o $@ $(LOGOUT)

# ASM
$(OBJDIR)/%.S.o: $(SRCDIR)/%.S
	@$(LOG) "(GCC) $@"
	@$(MKDIR) $(FOLDER)
	@$(LOGTIME) $(GCC) $(ASMFLAGS) $(ADD_INCLUDE) $< -o $@ $(LOGONLY)
	@$(GCC) $(ASMFLAGS) $(ADD_INCLUDE) $< -o $@ $(LOGOUT)

# =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
# C
$(OBJDIR)/%.o: %.c
	@$(LOG) "(GCC) $@"
	@$(MKDIR) $(FOLDER)
	@$(LOGTIME) $(GCC) $(CFLAGS) $(ADD_INCLUDE) $< -o $@ $(LOGONLY)
	@$(GCC) $(CFLAGS) $(ADD_INCLUDE) $< -o $@ $(LOGOUT)

# C++
$(OBJDIR)/%.o: %.cpp
	@$(LOG) "(CXX) $@"
	@$(MKDIR) $(FOLDER)
	@$(LOGTIME) $(CXX) $(CCFLAGS) $(ADD_INCLUDE) $< -o $@ $(LOGONLY)
	@$(CXX) $(CCFLAGS) $(ADD_INCLUDE) $< -o $@ $(LOGOUT)

# DEP/C
$(OBJDIR)/%.d: %.c
	@$(LOG) "(GCC) $@"
	@$(MKDIR) $(FOLDER)
	@$(LOGTIME) $(GCC) -MM $(CFLAGS) $(ADD_INCLUDE) $< -o $@ $(LOGONLY)
	@$(GCC) -MM $(CFLAGS) $(ADD_INCLUDE) $< -o $@ $(LOGOUT)

# DEP/C++
$(OBJDIR)/%.d: %.cpp
	@$(LOG) "(CXX) $@"
	@$(MKDIR) $(FOLDER)
	@$(LOGTIME) $(CXX) -MM $(CCFLAGS) $(ADD_INCLUDE) $< -o $@ $(LOGONLY)
	@$(CXX) -MM $(CCFLAGS) $(ADD_INCLUDE) $< -o $@ $(LOGOUT)

# =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
# LIB

$(OBJDIR)/%.ar: $(OBJDIR)/%.o $(OBJS)
	@$(LOG) "(AR) $< -> $(TARGET_LIB)"
	@$(LOGTIME) $(AR) cru $(TARGET_LIB) $< $(LOGONLY)
	@$(AR) cru $(TARGET_LIB) $< $(LOGOUT)
	@echo 1 > $@
