#include<16f877a.h>
#fuses nowdt, xt
#use delay(clock= 4 000 000)

void main()
{
   while(1)
   {
      if(input(pin_b0) == 1 && input(pin_b1) == 0)
      {         
         setup_ccp1(ccp_pwm);
         setup_ccp2(ccp_pwm);
         setup_timer_2(T2_DIV_BY_4, 250, 1); //freq wave 1KHz
         set_pwm1_duty(188); //Duty Cycel 75%
         set_pwm2_duty(125); //Duty Cycel 50%
      }
      else if(input(pin_b0) == 0 && input(pin_b1) == 1)
      {         
         setup_ccp1(ccp_pwm);
         setup_ccp2(ccp_pwm);
         setup_timer_2(T2_DIV_BY_1, 50, 1); //freq wave 20KHz
         set_pwm1_duty(30); //Duty Cycel 60%
         set_pwm2_duty(43); //Duty Cycel 85%      
      }
      else
      {
         setup_ccp1(CCP_OFF);
         setup_ccp2(CCP_OFF);         
      }
   }
}

