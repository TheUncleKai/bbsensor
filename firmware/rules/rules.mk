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

# C++
$(OBJDIR)/%.cpp.o: $(SRCDIR)/%.cpp $(ADD_DEP)
	@$(LOG) "(CXX) $@"
	@$(MKDIR) $(FOLDER)
	@$(LOGTIME) $(CXX) $(CFLAGS) $< -o $@ $(LOGONLY)
	@$(CXX) $(CFLAGS) $< -o $@ $(LOGOUT)

# C
$(OBJDIR)/%.c.o: $(SRCDIR)/%.c $(ADD_DEP)
	@$(LOG) "(CXX) $@"
	@$(MKDIR) $(FOLDER)
	@$(LOGTIME) $(CXX) $(CFLAGS) $< -o $@ $(LOGONLY)
	@$(CXX) $(CFLAGS) $< -o $@ $(LOGOUT)


# ASM
$(OBJDIR)/%.S.o: $(SRCDIR)/%.S $(ADD_DEP)
	@$(LOG) "(GCC) $@"
	@$(MKDIR) $(FOLDER)
	@$(LOGTIME) $(GCC) $(ASMFLAGS) $< -o $@ $(LOGONLY)
	@$(GCC) $(ASMFLAGS) $< -o $@ $(LOGOUT)


# DEP/C++
$(OBJDIR)/%.d: %.cpp $(ADD_DEP)
	@$(LOG) "$@"
	@$(MKDIR) $(FOLDER)
	@$(LOGTIME) $(CXX) -MM $(CFLAGS) $< -o $@ $(LOGONLY)
	@$(CXX) -MM $(CFLAGS) $< -o $@ $(LOGOUT)


# C++
$(OBJDIR)/%.o: %.cpp $(ADD_DEP)
	@$(LOG) "$@"
	@$(MKDIR) $(FOLDER)
	@$(LOGTIME) $(CXX) $(CFLAGS) $< -o $@ $(LOGONLY)
	@$(CXX) $(CFLAGS) $< -o $@ $(LOGOUT)


# =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
# LIB

$(OBJDIR)/%.ar: $(OBJDIR)/%.o $(OBJS)
	@$(LOG) "(AR) $< -> $(TARGET)"
	@$(LOGTIME) $(AR) cru $(TARGET) $< $(LOGONLY)
	@$(AR) cru $(TARGET) $< $(LOGOUT)
	@echo 1 > $@
