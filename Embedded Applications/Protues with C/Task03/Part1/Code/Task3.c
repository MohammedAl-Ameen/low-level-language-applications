#include<16f877a.h>
#DEvice ADC=10;
#use delay(clock = 4000000)
#include <lcd.c>



double value;

void main(){
lcd_init();
setup_adc(ADC_CLOCK_INTERNAL);
setup_adc_ports(ALL_ANALOG);

while(1){
set_adc_channel(0);
value=((read_adc()*(5.0/1024.0)/5) + 0.095)/0.009;
value=value-1.4;

printf(lcd_putc, "This is the \n value = %f  " , value);



}








}
