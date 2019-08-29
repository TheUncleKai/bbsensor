#include <Arduino.h>
#line 1 "/home/kai/Arduino/Example/blink/blink.ino"
#line 1 "/home/kai/Arduino/Example/blink/blink.ino"
#ifdef DEBUG_ESP_PORT
#define DEBUG_MSG(...) DEBUG_ESP_PORT.printf( __VA_ARGS__ )
#else
#define DEBUG_MSG(...)
#endif

#define LED_BUILTIN 2

#line 9 "/home/kai/Arduino/Example/blink/blink.ino"
void setup();
#line 18 "/home/kai/Arduino/Example/blink/blink.ino"
void loop();
#line 9 "/home/kai/Arduino/Example/blink/blink.ino"
void setup() {
  Serial.begin(115200);
  delay(3000);
  
  pinMode(LED_BUILTIN, OUTPUT);     // Initialize the LED_BUILTIN pin as an output
  DEBUG_MSG("bootup...\n");
}

// the loop function runs over and over again forever
void loop() {
  DEBUG_MSG("loop %d\n", millis());
  
  DEBUG_MSG("LED low\n", millis());

  digitalWrite(LED_BUILTIN, LOW);   // Turn the LED on (Note that LOW is the voltage level
                                    // but actually the LED is on; this is because 
                                    // it is acive low on the ESP-01)

  
  delay(1000);                      // Wait for a second
  DEBUG_MSG("LED high\n", millis());
  digitalWrite(LED_BUILTIN, HIGH);  // Turn the LED off by making the voltage HIGH
  delay(2000);                      // Wait for two seconds (to demonstrate the active low LED)
}

