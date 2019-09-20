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

#ifndef LED_H_INCLUDED
#define LED_H_INCLUDED

#include "device.h"


class LED : public Device
{
  private:
    int m_num, m_status, m_pin;

    void _on();
    void _off();

  public:
    LED (int num, int pin);

    void toggle();
    void on();
    void off();

    void setup();
    void execute();
};

#endif // LED_H_INCLUDED
