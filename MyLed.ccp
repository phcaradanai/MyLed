#include "MyLed.h"

MyLed::MyLed(int pin,
             bool blink,
             uint8_t msOn,
             uint8_t msOff) {

	this->pin = pin;
              
              setTime(msOn,msOff);
              setBlink(blink);

              pinMode(this->pin, OUTPUT);
             }


void MyLed::setBlink(bool b){
  blink = b;
  if(b)msOff = millis() + msOn;
}

MyLed::~MyLed(){
  
}

void MyLed::setTime(uint8_t On,uint8_t Off) {
  msOn = On;
  msOff = Off;
}

bool MyLed::getState(){
  uint8_t reset;
  reset = pulseIn(pin,HIGH);
  if (reset > 1000)
  return true;
  else return false;
  delay(50);
}
void MyLed::turnOn(){
  blink = false;
  digitalWrite(pin, LOW);
}

void MyLed::turnOff(){
  blink = false;
  digitalWrite(pin,HIGH);
}
void MyLed::loop(){
  if(blink){
    uint8_t cur = millis();
    if(cur >= msOff){
      digitalWrite(pin, !digitalRead(pin));
      msOff = cur + msOn;
    }
  }
}
