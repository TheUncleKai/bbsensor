/*
   Copyright (C) 2019, Kai Raphahn

   Licensed under the Apache License, Version 2.0 (the "License");
   you may not use this file except in compliance with the License.
   You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

   Unless required by applicable law or agreed to in writing, software
   distributed under the License is distributed on an "AS IS" BASIS,
   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
   See the License for the specific language governing permissions and
   limitations under the License.
*/

#include <settings.h>
#include <hardware.h>

Device* DEVICEList[MAX_DEVICES];


Hardware::Hardware()
{
    this->m_counter = 0;

    size_t i = 0;

    for (i = 0; i < MAX_DEVICES; ++i) {
        DEVICEList[i] = NULL;
    }
}


Hardware::~Hardware()
{
}


void Hardware::add_device(Device* device)
{
    if (this->m_counter == MAX_DEVICES)
        return;

    DEVICEList[this->m_counter] = device;
    ++this->m_counter;
}


void Hardware::setup()
{
    size_t i = 0;

    Device* device = NULL;

    for (i = 0; i < MAX_DEVICES; ++i) {
        device = DEVICEList[i];

        if (device == NULL)
            continue;

        device->setup();
    }
}


void Hardware::execute()
{
    size_t i = 0;

    Device* device = NULL;

    for (i = 0; i < MAX_DEVICES; ++i) {
        device = DEVICEList[i];

        if (device == NULL)
            continue;

        device->execute();
    }
}
