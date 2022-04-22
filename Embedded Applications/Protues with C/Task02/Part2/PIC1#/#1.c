#include<16f877a.h>
#fuses xt,nowdt
#use delay(clock = 2000000)
#use rs232(baud=9600, xmit=PIN_C6, rcv=PIN_C7)
#include<string.h>

char string[50];
#int_RDA
RDA_ISR()
{
   gets(string);
   printf("%s\r", string);
}

void main()
{
   enable_interrupts(GLOBAL);
   enable_interrupts(int_RDA);
   while(1);
}

