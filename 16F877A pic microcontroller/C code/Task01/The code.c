#include "16F877A.h"
#use delay (clock=4000000)
int akey;
void scankey()
{
akey =0;
while(akey==0)
   {
   
   output_d(255);   output_low(PIN_d4);
   if(!input(PIN_c0)&& output_low(PIN_d4))
      { akey =0x06;  }
   if(!input(PIN_c1)&& output_low(PIN_d4))
      { akey = 0x5B;  }
   if(!input(PIN_c2)&& output_low(PIN_d4))
      { akey = 0x4F;  }
      
      
   output_d(255); output_low(PIN_d5);
   if(!input(PIN_c1) && output_low(PIN_d5))
      { akey = 0x6D;   }
            
   
      
      
   output_d(255);    output_low(PIN_d6);
   if(!input(PIN_c1)&& output_low(PIN_d6))
      { akey = 0x5B;  }
 
 output_d(255);    output_low(PIN_d7);
   if(!input(PIN_c1)&& output_low(PIN_d7))
      { akey = 0x3f;  }
      
      
      
      }
      

      
      }
      
 
   
   
   
   
void main()
{   while (1)
   {scankey(); 
   
   
   output_b(akey);}
}
