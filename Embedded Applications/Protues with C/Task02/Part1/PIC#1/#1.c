#include<16f877a.h>
#fuses xt,nowdt
#use delay(clock = 2000000)
#use rs232(baud=9600, xmit=PIN_C6, rcv=PIN_C7)


void main()
{
  
      printf("Hello, my name is Mohammed ");
      delay_ms(1000);
      printf("I study computer Engineer ");
      delay_ms(1000);
      printf("I'm 23 years old\r");
      delay_ms(1000);
      
      //I deleted the whhile because it look better without it
   
   
}

