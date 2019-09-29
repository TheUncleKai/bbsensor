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

#ifndef TRANSFER_H_INCLUDED
#define TRANSFER_H_INCLUDED

#include <device.h>
#include <SPI.h>


class Transfer : public Device
{
    public:
        Transfer ();
        virtual ~Transfer();

        SPIClass* spi();
        void transfer(int channel, int data);
        void commit();

        void setup();
        void execute();

    private:
        SPIClass* p_spi;
        int m_cs1, m_cs2, m_data, m_transfer, m_channel;

        int _on(int channel);
        int _off(int channel);
};

#endif // TRANSFER_H_INCLUDED
