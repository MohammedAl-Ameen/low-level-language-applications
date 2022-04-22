#include<16f877a.h>
#fuses xt,nowdt
#use delay(clock = 2000000)
#include<lcd.c>
#use rs232(baud=9600, xmit=PIN_C6, rcv=PIN_C7)
#include<string.h>

char pwd[15];
char input_user[50];

#int_RDA
RDA_ISR()
{
   gets(input_user);
   if(strcmp(input_user,pwd) != 0)
   {  
      lcd_init();
      lcd_gotoxy(1,1);
      printf(lcd_putc,"\fINCORRECT\nPASSWORD");
   }
   else
   {   
      lcd_init();
      lcd_gotoxy(1,1);
      printf(lcd_putc,"\fA correct password\ngood");   
   }
}

void main()
{
   enable_interrupts(GLOBAL);
   enable_interrupts(int_RDA);
   strcpy(pwd,"moh");
   
   while(1);
}

