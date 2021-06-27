#ifndef MYLED_H
#define MYLED_H

#include <Arduino.h>

#define DEFAULT_INTERVAL 1000
#define DEFAULT_BLINK false

class MyLed {
  private:
    int pin;
    bool blink;
    uint8_t msOn;
    uint8_t msOff;

  public:
    MyLed(int pin,
          bool blink = DEFAULT_BLINK,
          uint8_t msOn = DEFAULT_INTERVAL,
          uint8_t msOff = DEFAULT_INTERVAL);
    ~MyLed();


    void setBlink(bool b);
    void setTime(uint8_t On,uint8_t Off);
    bool getState();
    void turnOn();
    void turnOff();
    void loop();
};

#endif