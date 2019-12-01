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

compile_spi:
	@$(MKDIR) $(OUTPUT)
	@$(INFORM) "Compile SPI"
	@$(MAKE) -s -C prj/external/spi -f Makefile compile

link_spi: compile_spi
	@$(INFORM) "Link SPI"
	@$(MAKE) -s -C prj/external/spi -f Makefile link

clean_spi: link_spi
	@$(INFORM) "Clean SPI"
	@$(MAKE) -s -C prj/external/spi -f Makefile clean

LINK_LIST += link_spi
CLEAN_LIST += clean_spi
PHONY_LIST += compile_spi link_spi clean_spi
