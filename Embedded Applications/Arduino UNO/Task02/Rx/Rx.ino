#include <LiquidCrystal.h>
const int rs = 12, en = 11, d4 = 5, d5 = 4, d6 = 3, d7 = 2;
LiquidCrystal lcd(rs, en, d4, d5, d6, d7);

String received;
void setup() 
{
  Serial.begin(9600);
  lcd.begin(16, 2);
  lcd.clear();
}

void loop() 
{
  if(Serial.available() > 0)
  {
     received = Serial.readString();
     lcd.setCursor(0, 1);
 
     lcd.print(received);
  }
}
