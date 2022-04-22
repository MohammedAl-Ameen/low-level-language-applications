#include <Wire.h>     // include Arduino Wire library
#include "rgb_lcd.h"  // include Seeed Studio LCD library

rgb_lcd lcd;  // initialize LCD library

String pattern;
const int B = 4275;               // B value of the thermistor
const int R0 = 100000;            // R0 = 100k

void setup() 
{
 // initialize the LCD with 16 columns and 2 rows:
 lcd.begin(16, 2);
 
  // move cursor to upper left position (0, 0)
 lcd.setCursor(0, 0);
 
 pinMode(2,INPUT);
 pinMode(3,INPUT);
}

int counter = 0;
void loop() 
{
  int a = analogRead(0);
 
  float R = 1023.0/a-1.0;
  R = R0*R;

  float temperature = 1.0/(log(R/R0)/B+1/298.15)-273.15; // convert to temperature via datasheet 
  
  int val1 = digitalRead(2);
  int val2 = digitalRead(3);

  

  if(val1 == 1) // Touch
  {  
    while(digitalRead(2) == 1){}
    counter++;
    pattern += "1";
    lcd.clear();
    lcd.print(pattern);
    
  }
  if(val2 == 1)
  {  
    while(digitalRead(3) == 1){}
    counter++;
    pattern += "2";
    lcd.clear();
    lcd.print(pattern);
  }
  if(pattern == "11112222")
  {
    lcd.setCursor(0, 1);
    lcd.print(temperature);
    analogWrite(5, (a / 4) * 0.5);
  }
  else if(counter > 8)
  {
    counter = 0;  
    analogWrite(5, 0);
    lcd.clear();
    pattern = "";
  }
  
}
