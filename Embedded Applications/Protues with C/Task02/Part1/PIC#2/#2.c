#include<16f877a.h>
#fuses xt,nowdt
#use delay(clock = 2000000)
#include<lcd.c>
#use rs232(baud=9600, xmit=PIN_C6, rcv=PIN_C7)
#include<string.h>

char string[50];
#int_RDA
RDA_ISR()
{
   gets(string);
}

void main()
{
   enable_interrupts(GLOBAL);
   enable_interrupts(int_RDA);
   
   lcd_init();
   while(1)
   {
      lcd_gotoxy(1,1);
      printf(lcd_putc, "%s", string);
   }
   
}

