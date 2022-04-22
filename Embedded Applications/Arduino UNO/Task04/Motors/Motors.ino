#include <Servo.h>
#include <Stepper.h>

const int stepsPerRevolution = 2048;

// Pins entered in sequence IN1-IN3-IN2-IN4 for proper step sequence
Stepper myStepper = Stepper(stepsPerRevolution, 8, 10, 9, 11);

int arr[100];
Servo myservo; 
void setup() 
{
  myservo.attach(6); 
  myStepper.setSpeed(10);
  pinMode(2, INPUT);
  for(int i = 0; i < 100; i++)
  {
      arr[i] = 0;     
  }

  Serial.begin(9600);
}

void loop() 
{
   
    
    
  if(digitalRead(2))
  {
      while(digitalRead(2)){}  


      
      for(int i = 0; i < 100; i++)
      {      
        int val = analogRead(A0);
        int val2 = map(val, 0, 1023, 0, 180);  
        arr[i] = val2;
        Serial.print(val2);
        delay(80); 
      
      }
      for(int i = 1; i < 100; i++)
      {   

          myStepper.step(arr[i] - arr[i-1]); 
          myservo.write(arr[i]); 

         delay(15);
      }
  }
  
  
}
