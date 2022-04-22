#include<16f877a.h>
#Device ADC=10;
#use delay(clock = 4000000)
#include<HDM64GS12.c>
#include<graphics.c>
#include<stdlib.h>

char name[] ="Embedded Lab";
char Text[] ="Pressure sensor";
double value;
double per;
void main(){
setup_adc(ADC_CLOCK_INTERNAL);
setup_adc_ports(ALL_ANALOG);

glcd_init(on);
delay_ms(10);
glcd_rect(97,0,127,63,OFF,ON);
glcd_text57(0,0,text,1.5,on);
glcd_text57(0,20,name,1.5,on);
char value1 [20];
char value2 [20];
set_adc_channel(0);

while(1){


value=((read_adc()*(5.0/1024.0)/5) + 0.095)/0.009;
value=value-1.4;
Sprintf(value1,"%fKPa",value);

if(strcmp(value1,value2))
glcd_text57(0,40,value2,2,off);

glcd_text57(0,40,value1,2,on);

per= (value/120)*100;
per = 62*per/100;


if(strcmp(value1,value2)){
glcd_rect(98,62-per,126,62,YES,ON);

}


glcd_rect(98,1,126,62-per,YES,off);







strcpy(value2, value1);






}








}
