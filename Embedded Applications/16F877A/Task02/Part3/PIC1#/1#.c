#include<16f877a.h>
#fuses xt,nowdt
#use delay(clock = 2000000)
#use rs232(baud=9600, xmit=PIN_C6, rcv=PIN_C7, stream = user1)
#use rs232(baud=9600, xmit=PIN_B1, rcv=PIN_B0, stream = user2)
#include<string.h>

char string[50];
#int_RDA
RDA_ISR()
{
   fgets(string, user1);
   fprintf(user2, "\f%s\r", string);
}
#int_EXT
EXT_ISR()
{
   fgets(string, user2);
   fprintf(user1, "\f%s\r", string);
}
void main()
{
   enable_interrupts(GLOBAL);
   enable_interrupts(int_RDA);
   enable_interrupts(int_EXT);
   
   while(1);
}

