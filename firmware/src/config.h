#ifndef CONFIG_H_INCLUDED
#define CONFIG_H_INCLUDED

#ifdef DEBUG_ESP_PORT
#define DEBUG_MSG(...) DEBUG_ESP_PORT.printf( __VA_ARGS__ )
#else
#define DEBUG_MSG(...)
#endif

// #define LED_BUILTIN 2

#define LED1 16 // D0
#define LED2 5  // D1

#define LOOP_WAIT 500

#endif // CONFIG_H_INCLUDED
