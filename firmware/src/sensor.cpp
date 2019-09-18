#include <Arduino.h>

#include "config.h"
#include "data.h"

void setup();
void loop();

Data* data = new Data();


void setup() {
    Serial.begin(115200);
    delay(3000);

    data->led1()->setup();
    data->led2()->setup();

    DEBUG_MSG("bootup...\n");
}

// the loop function runs over and over again forever
void loop() {
    DEBUG_MSG("loop %d\n", millis());


    DEBUG_MSG("Toggle on\n");
    data->led1()->toggle();
    data->led2()->toggle();

//    digitalWrite(LED1, LOW);
//    digitalWrite(LED2, HIGH);


    delay(LOOP_WAIT);

    DEBUG_MSG("Toggle off\n");
    data->led1()->toggle();
    data->led2()->toggle();

//    digitalWrite(LED1, HIGH);
//    digitalWrite(LED2, LOW);

    delay(LOOP_WAIT);
}
