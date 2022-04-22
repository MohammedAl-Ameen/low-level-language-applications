#include <16F877A.h>
#fuses xt , nowdt
#use delay(clock=2 000 000)
#include<lcd.c>

void main(){

lcd_init();

while(1){
lcd_putc('\f');
lcd_gotoxy(1,1);
printf(lcd_putc,"traffic 1 stop\n traffic 2 go");
output_bit(pin_a0,1);
output_bit(pin_a1,0);
output_bit(pin_a2,0);
output_bit(pin_b0,0);
output_bit(pin_b1,0);
output_bit(pin_b2,1);
delay_ms(4000);
lcd_putc('\f');
lcd_gotoxy(1,1);
printf(lcd_putc,"traffic 1 wait\n traffic 2 wait");
output_bit(pin_a0,0);
output_bit(pin_a1,1);
output_bit(pin_a2,0);
output_bit(pin_b0,0);
output_bit(pin_b1,1);
output_bit(pin_b2,0);
delay_ms(2000);
lcd_putc('\f');
lcd_gotoxy(1,1);
printf(lcd_putc,"traffic 1 go\n traffic 2 stop");
output_bit(pin_a0,0);
output_bit(pin_a1,0);
output_bit(pin_a2,1);
output_bit(pin_b0,1);
output_bit(pin_b1,0);
output_bit(pin_b2,0);
delay_ms(4000);


}





}



