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
#include <debug.h>

#include <click.h>


ClickSpan::ClickSpan()
{
    this->start = 0;
    this->end = 0;
}


ClickSpan::~ClickSpan()
{
    //dtor
}


unsigned long ClickSpan::diff(ClickSpan* timespan = NULL)
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


void ClickSpan::reset()
{
    this->start = 0;
    this->end = 0;
}


void ClickSpan::copy(ClickSpan* timespan)
{
    this->start = timespan->start;
    this->end = timespan->end;
}



Click::Click (int num)
{
    this->m_num = num;
    this->m_counter = 0;
    this->m_type = Click::NONE;
    this->p_current = new ClickSpan();
    this->p_last = new ClickSpan();
}


Click::~Click()
{
    delete this->p_current;
    delete this->p_last;
}


void Click::reset()
{
    this->m_counter = 0;
    this->m_type = Click::NONE;
    this->p_current->reset();
    this->p_last->reset();
}


Click::Type Click::type()
{
    return this->m_type;
}


void Click::set_high(unsigned long timestamp)
{
    if (this->m_counter == 0) {
        this->p_current->start = timestamp;
    } else {
        this->p_last->copy(this->p_current);

        this->p_current->start = timestamp;
        this->p_current->end = 0;
    }
}


void Click::set_low(unsigned long timestamp)
{
    this->p_current->end = timestamp;
    this->_process();
}


void Click::_process()
{
    unsigned long diff, ddiff;

    diff = this->p_current->diff();
    ddiff = this->p_current->diff(this->p_last);

#ifdef CLICK_DEBUG
    DEBUG_MSG("BUTTON%d: diff %d, ddiff %d, count %d, current %d/%d, last %d/%d\n",
                this->m_num,
                diff,
                ddiff,
                this->m_counter,
                this->p_current->start,
                this->p_current->end,
                this->p_last->start,
                this->p_last->end);
#endif // CLICK_DEBUG

    if (this->m_counter == 0) {
        if (diff <= CLICK_SINGLE) {
            this->m_type = Click::SINGLE_CLICK;
            this->m_counter++;

#ifdef CLICK_DEBUG
            DEBUG_MSG("BUTTON%d: %d\n", this->m_num, this->m_type);
#endif // CLICK_DEBUG
            return;
        }
        if (diff >= CLICK_HOLD) {
            this->m_type = Click::HOLD_CLICK;
            this->m_counter = 0;
            this->p_current->reset();
            this->p_last->reset();

#ifdef CLICK_DEBUG
            DEBUG_MSG("BUTTON%d: %d\n", this->m_num, this->m_type);
#endif // CLICK_DEBUG
            return;
        }
    }

    if (this->m_counter > 0) {
        if (ddiff <= CLICK_DOUBLE) {
            this->m_type = Click::DOUBLE_CLICK;
            this->m_counter = 0;
            this->p_current->reset();
            this->p_last->reset();

#ifdef CLICK_DEBUG
            DEBUG_MSG("BUTTON%d: %d\n", this->m_num, this->m_type);
#endif // CLICK_DEBUG
            return;
        }
        if (diff <= CLICK_SINGLE) {
            this->m_type = Click::SINGLE_CLICK;
            this->m_counter = 1;

#ifdef CLICK_DEBUG
            DEBUG_MSG("BUTTON%d: %d\n", this->m_num, this->m_type);
#endif // CLICK_DEBUG
            return;
        }
    }

}
