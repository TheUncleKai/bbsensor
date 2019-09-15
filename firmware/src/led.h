#ifndef LED_H_INCLUDED
#define LED_H_INCLUDED


class LED {
  private:
    int _num, _status, _pin;

  public:
    LED (int num, int pin);

    void setup();
    void toggle();

    void on();
    void off();
};



#endif // LED_H_INCLUDED
