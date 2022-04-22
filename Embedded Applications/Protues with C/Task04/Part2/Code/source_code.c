#include<16F877A.h>
#fuses nowdt,hs,xt
#DEVICE ADC = 10
#use delay(clock= 4 000 000)
#include<lcd.c>

double Temp;

void main()
{
   lcd_init();
   setup_adc(ADC_CLOCK_INTERNAL);
   setup_adc_ports(ALL_ANALOG);
   set_adc_channel(0);
   
   while(1)
   {
     Temp =read_adc()*((5.0/1023.0) * (1.0/0.01)) ;
      printf(lcd_putc,"\f");
   
      
      if(Temp > 60 && Temp <70 ){
      printf(lcd_putc,"Warning");
      lcd_gotoxy(1,1);
      setup_ccp2(ccp_off);
      setup_ccp1(ccp_PWM);
      setup_timer_2(T2_Div_By_1,50,1);
      set_pwm1_duty(25); 

      }
      
      
      else if(Temp > 70 ){
      printf(lcd_putc,"oh it's fire   ");
      lcd_gotoxy(1,1);
      setup_ccp1(ccp_off);
      setup_ccp2(ccp_PWM);
      setup_timer_2(T2_Div_By_1,50,1);
      set_pwm2_duty(40); 

      }
      
      else {
      setup_ccp1(ccp_off);
      setup_ccp2(ccp_off);
 
      }
      
     
   }
}
