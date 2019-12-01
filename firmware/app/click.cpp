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

#include <Arduino.h>

#include <settings.h>
#include <click.h>




Click::Span::Span()
{
    this->start = 0;
    this->end = 0;
}


Click::Span::~Span()
{
    //dtor
}


unsigned long Click::Span::diff(Click::Span* timespan = NULL)
{
    unsigned long result = 0;

    if (timespan == NULL) {
        if (this->end >= this->start) {
            result = this->end - this->start;
        }
    } else {
        if (timespan->start == 0) {
            return result;
        }
        if (this->end >= timespan->start) {
            result = this->end - timespan->start;
        }
    }

    return result;
}


void Click::Span::reset()
{
    this->start = 0;
    this->end = 0;
}


void Click::Span::copy(Click::Span* timespan)
{
    this->start = timespan->start;
    this->end = timespan->end;
}



Click::Manager::Manager (uint8_t num)
{
    this->m_num = num;
    this->m_counter = 0;
    this->m_type = Click::Type::NONE;
    this->p_current = new Click::Span();
    this->p_last = new Click::Span();
}


Click::Manager::~Manager()
{
    delete this->p_current;
    delete this->p_last;
}


void Click::Manager::reset()
{
    this->m_counter = 0;
    this->m_type = Click::Type::NONE;
    this->p_current->reset();
    this->p_last->reset();
}


Click::Type Click::Manager::type()
{
    return this->m_type;
}


void Click::Manager::set_high(unsigned long timestamp)
{
    if (this->m_counter == 0) {
        this->p_current->start = timestamp;
    } else {
        this->p_last->copy(this->p_current);

        this->p_current->start = timestamp;
        this->p_current->end = 0;
    }
}


void Click::Manager::set_low(unsigned long timestamp)
{
    this->p_current->end = timestamp;
    this->_process();
}


void Click::Manager::_process()
{
    unsigned long diff, ddiff;

    diff = this->p_current->diff();
    ddiff = this->p_current->diff(this->p_last);

#ifdef DEBUG_LEVEL3
    DEBUG_MSG("BUTTON%d: diff %d, ddiff %d, count %d, current %d/%d, last %d/%d\n",
                this->m_num,
                diff,
                ddiff,
                this->m_counter,
                this->p_current->start,
                this->p_current->end,
                this->p_last->start,
                this->p_last->end);
#endif // DEBUG_LEVEL3

    if (this->m_counter == 0) {
        if (diff <= CLICK_SINGLE) {
            this->m_type = Click::Type::SINGLE;
            this->m_counter++;

#ifdef DEBUG_LEVEL3
            DEBUG_MSG("BUTTON%d: %d\n", this->m_num, this->m_type);
#endif // DEBUG_LEVEL3
            return;
        }
        if (diff >= CLICK_HOLD) {
            this->m_type = Click::Type::HOLD;
            this->m_counter = 0;
            this->p_current->reset();
            this->p_last->reset();

#ifdef DEBUG_LEVEL3
            DEBUG_MSG("BUTTON%d: %d\n", this->m_num, this->m_type);
#endif // DEBUG_LEVEL3
            return;
        }
    }

    if (this->m_counter > 0) {
        if (ddiff <= CLICK_DOUBLE) {
            this->m_type = Click::Type::DOUBLE;
            this->m_counter = 0;
            this->p_current->reset();
            this->p_last->reset();

#ifdef DEBUG_LEVEL3
            DEBUG_MSG("BUTTON%d: %d\n", this->m_num, this->m_type);
#endif // DEBUG_LEVEL3
            return;
        }
        if (diff <= CLICK_SINGLE) {
            this->m_type = Click::Type::SINGLE;
            this->m_counter = 1;

#ifdef DEBUG_LEVEL3
            DEBUG_MSG("BUTTON%d: %d\n", this->m_num, this->m_type);
#endif // DEBUG_LEVEL3
            return;
        }
    }

}
