#ifndef DATA_H_INCLUDED
#define DATA_H_INCLUDED

#include "led.h"


class Data
{
    public:
        Data();
        virtual ~Data();

        LED* led1();
        LED* led2();

    protected:

    private:
        LED* p_led1;
        LED* p_led2;
};

#endif // DATA_H
