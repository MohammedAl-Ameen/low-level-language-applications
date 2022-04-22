#include "16F877A.h"
#include <string.h>
#use delay(clock=4000000)
int n=8;
char string1[20];
char string2[20];
void main()
{
strcpy (string1,"mohammed");

#use rs232(baud=9600, xmit=PIN_D0, rcv=PIN_D1)
delay_ms(1000);  

putc(254); putc(1);    
delay_ms(10);   
printf("Welcome");

for (n='3';n>='0';n--)
   {   output_a(n);
   
      delay_ms(1000);
   }
putc(254); putc(1);


#use rs232(baud=9600, xmit=PIN_B0, rcv=PIN_B1)
PRINTF("Please enter your password\r\r" );
gets(string2);
#use rs232(baud=9600, xmit=PIN_D0, rcv=PIN_D1)
delay_ms(1000);
putc(254); putc(1);
delay_ms(10);
if (strcmp(string2,string1)==0){

printf("Good day");
//for (n = 0 ;n < 9;n++){
//int counter;
//counter = 2^n;
output_c(1);
delay_ms(1000);
output_c(2);
delay_ms(1000);
output_c(4);
delay_ms(1000);
output_c(8);
delay_ms(1000);
output_c(16);
delay_ms(1000);
output_c(32);
delay_ms(1000);
output_c(64);
delay_ms(1000);
output_c(128);
delay_ms(1000);
output_c(256);
delay_ms(1000);


//}

}
else 
printf("Good bye");
      }

