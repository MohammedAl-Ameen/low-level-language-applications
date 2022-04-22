

String input;
int strLen = 1;
void setup() 
{
  Serial.begin(9600);
  pinMode(7, INPUT);
  pinMode(6, INPUT);
  
}

void loop() 
{
  if(digitalRead(7) == HIGH)
  {
    
    input += "A";  
    strLen++;
    while(digitalRead(7) == HIGH);
  }
  if(digitalRead(6)== HIGH )
  {
    input += "B";  
    strLen++;
    while(digitalRead(6) == HIGH);
  }
  if(strLen > 8)
  {
    Serial.print(input);
    strLen = 1;
    input = "";
      
    
  }
}
