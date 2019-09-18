#include "data.h"
#include "config.h"

Data::Data()
{
    p_led1 = new LED(1, LED1);
    p_led2 = new LED(2, LED2);
}


Data::~Data()
{
    //dtor
}


LED* Data::led1() {
    return p_led1;
}


LED* Data::led2() {
    return p_led2;
}
