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

compile_crc32:
	@$(MKDIR) $(OUTPUT)
	@$(INFORM) "Compile $(LIBCRC32)"
	@$(MAKE) -s -C ext/CRC32 -f Makefile compile

link_crc32: compile_crc32
	@$(INFORM) "Link $(LIBCRC32)"
	@$(MAKE) -s -C ext/CRC32 -f Makefile link

clean_crc32: link_crc32
	@$(INFORM) "Clean $(LIBCRC32)"
	@$(MAKE) -s -C ext/CRC32 -f Makefile clean

LINK_LIST += link_crc32
CLEAN_LIST += clean_crc32
PHONY_LIST += compile_crc32 link_crc32 clean_crc32
