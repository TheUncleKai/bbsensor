#include <Arduino.h>

#ifdef DEBUG_ESP_PORT
#define DEBUG_MSG(...) DEBUG_ESP_PORT.printf( __VA_ARGS__ )
#else
#define DEBUG_MSG(...)
#endif

// #define LED_BUILTIN 2

#define LED1 16 // D0
#define LED2 5  // D1

#define LOOP_WAIT 500

#include "led.h"

void setup();
void loop();


LED led1(1, LED1);
LED led2(2, LED2);


void setup() {
    Serial.begin(115200);
    delay(3000);

    led1.setup();
    led2.setup();

    DEBUG_MSG("bootup...\n");
}

// the loop function runs over and over again forever
void loop() {
    DEBUG_MSG("loop %d\n", millis());


    DEBUG_MSG("Toggle on\n");
    led1.toggle();
    led2.toggle();

//    digitalWrite(LED1, LOW);
//    digitalWrite(LED2, HIGH);


    delay(LOOP_WAIT);

    DEBUG_MSG("Toggle off\n");
    led1.toggle();
    led2.toggle();

//    digitalWrite(LED1, HIGH);
//    digitalWrite(LED2, LOW);

    delay(LOOP_WAIT);
}
