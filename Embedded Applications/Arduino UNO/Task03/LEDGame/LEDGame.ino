#include <LiquidCrystal.h>
const int rs = 13, en = 12, d4 =11, d5 = 10, d6 = 9, d7 = 8;
LiquidCrystal lcd(rs, en, d4, d5, d6, d7);

#define R 14 // R1
#define G 15 // G1
#define W 16 // W1
#define R1 2
#define G1 3
#define W1 4
#define S 5

int speeds = 1000;
int maxx = 25;
int stage = 1;
int randomLed[25];

void generatePattern()
{
  randomSeed(analogRead(A4)); // Read air
  for(int i = 0; i < maxx; i++)
  {
    randomLed[i] = random(14,17);
  }   
}

void showPattern()
{
  for(int i = 0; i < stage; i++)
  {
    digitalWrite(randomLed[i], HIGH);
    delay(speeds);
    digitalWrite(randomLed[i], LOW);
    delay(speeds);
  }   
}
void incorrect()
{
  stage = 1;
  speeds = 1000;  
  lcd.setCursor(0,0);
  lcd.clear();
  lcd.print("Incorrect!");
}
void correct()
{
  stage++;
  speeds = speeds - (stage -1) * 50;
  lcd.setCursor(0,0);
  lcd.clear();
  lcd.print("Correct!");
  lcd.setCursor(0,1);
  lcd.print(stage);
}
void enteredPattern()
{
    int c = 0;
    while (c < stage)
    {
      if(digitalRead(R1))
      {
        if(randomLed[c] != 14)
        {
           incorrect();
           return;
        }
        else
        {
           c++;
        }
        while(digitalRead(R1)){}
      }  
      else if(digitalRead(G1))
      {
        if(randomLed[c] != 15)
        {
           incorrect();
           return;
        }
        else
        {
           c++;
        }
        while(digitalRead(G1)){}
      } 
      if(digitalRead(W1))
      {
        if(randomLed[c] != 16)
        {
           incorrect();
           return;
        }
        else
        {
           c++;
        }
        while(digitalRead(W1)){}
      } 
    }
    correct(); // when correct
}
void setup() 
{
  lcd.begin(16, 2);
  pinMode(R1, INPUT);
  pinMode(G1, INPUT);
  pinMode(W1, INPUT);
  pinMode(S, INPUT);
  pinMode(R, OUTPUT);
  pinMode(G, OUTPUT);
  pinMode(W, OUTPUT);
}

void loop() 
{
  if(digitalRead(S))
  {
      generatePattern();
      showPattern();
      enteredPattern();
   
  }
 
}
