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

#ifndef CHANNEL_H_INCLUDED
#define CHANNEL_H_INCLUDED

#include <list>
#include <SPI.h>

#include <device.h>


class Channel : public Device
{
    public:
        Channel (SPIClass* spi, int num, int channel, int type);
        virtual ~Channel();

        enum Type {
            NONE = 0,
            RTD = 1,
            PTC10 = 2,
            PTC100 = 3
        };

        void setup();
        void execute();
        Type type();

        int number();
        int channel();

    private:
        int m_num, m_channel;
        Type m_type;
        SPIClass* m_spi;
};

typedef std::list<Channel*> ChannelList;


#endif // CHANNEL_H_INCLUDED
