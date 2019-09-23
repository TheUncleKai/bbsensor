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

#ifndef TEMPERATURE_H_INCLUDED
#define TEMPERATURE_H_INCLUDED

#include <SPI.h>

#include <device.h>


class Temperature : public Device
{
  private:
    int m_num, m_cs, m_channel;
    SPIClass* m_spi;

  public:
    Temperature (SPIClass* spi, int num, int cs, int channel);
    virtual ~Temperature();

    void setup();
    void execute();
};

#endif // TEMPERATURE_H_INCLUDED
