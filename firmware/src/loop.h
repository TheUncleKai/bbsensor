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

#ifndef LOOP_H_INCLUDED
#define LOOP_H_INCLUDED


class Loop
{
    public:
        Loop();
        virtual ~Loop();

        unsigned long bootup();
        unsigned long counter();
        unsigned long timestamp();

        void setup();
        void start();
        void finish();

    protected:

    private:
        unsigned long m_bootup;
        unsigned long m_delay;
        unsigned long m_counter;
        unsigned long m_timestamp;
};

#endif // LOOP_H_INCLUDED
