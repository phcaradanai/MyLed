#include "MyLed.h"

MyLed led(13);//numberpin led

void setup(){

  led.setTime(2000,1500);//number interval time 2 argument
  
  led.turnOn();

  led.turnOff();

  led.setBlink(true);
}

void loop(){
  
  led.loop();
}
