#include "16F877A.h"
#include <string.h>
#use delay(clock=4000000)
int n=8;
char string1[20];
char string2[20];
void main()
{
strcpy (string1,"hello");
#use rs232(baud=9600, xmit=PIN_B0, rcv=PIN_B1)
while(1) {
PRINTF("welcome to two_RS232 connections\r" );
PRINTF("In 8-seconds a password will apear on the LCD\r" );
for (n='8';n>='0';n--)
	{	output_a(n);
		printf("\a");
		delay_ms(1000);
	}
putc(13);
#use rs232(baud=9600, xmit=PIN_D0, rcv=PIN_D1)
delay_ms(1000); 	// Wait for LCD to wake up

putc(254); putc(1); 	// clear the screen
delay_ms(10); 	// Wait for LCD to finish
PRINTF(string1);	 // Send test character
putc(254); putc(192); delay_ms(10);	// Move to second row
printf( "3 sec");	 // Send test data again

#use rs232(baud=9600, xmit=PIN_B0, rcv=PIN_B1)
PRINTF("enter the password to start the system\r\r" );
gets(string2);
if (strcmp(string2,string1)==0)
	output_c(15);
else 
	output_c(128);
		}
} 