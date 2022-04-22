#include <16F877A.h>
#fuses xt , nowdt
#use delay(clock=2 000 000)


void main(){

while(1){



output_bit(pin_b3,0);
output_bit(pin_b4,0);
output_bit(pin_b5,0);
output_bit(pin_b6,0);



if(!input(pin_b0)){

output_bit(pin_b3,0);
output_bit(pin_b4,1);
output_bit(pin_b5,1);
output_bit(pin_b6,1);

if(!input(pin_b0)){
output_high(pin_d0);
output_low(pin_d1);
output_low(pin_d2);
output_low(pin_d3);
}

output_bit(pin_b3,1);
output_bit(pin_b4,0);
output_bit(pin_b5,1);
output_bit(pin_b6,1);

if(!input(pin_b0)){
output_low(pin_d0);
output_low(pin_d1);
output_high(pin_d2);
output_low(pin_d3);
}

output_bit(pin_b3,1);
output_bit(pin_b4,1);
output_bit(pin_b5,0);
output_bit(pin_b6,1);

if(!input(pin_b0)){
output_high(pin_d0);
output_high(pin_d1);
output_high(pin_d2);
output_low(pin_d3);
}

output_bit(pin_b3,1);
output_bit(pin_b4,1);
output_bit(pin_b5,1);
output_bit(pin_b6,0);

if(!input(pin_b0)){
output_high(pin_d0);
output_high(pin_d1);
output_high(pin_d2);
output_high(pin_d3);
}
}
if(!input(pin_b1)){
{
output_bit(pin_b3,0);
output_bit(pin_b4,1);
output_bit(pin_b5,1);
output_bit(pin_b6,1);

if(!input(pin_b1)){
output_low(pin_d0);
output_high(pin_d1);
output_low(pin_d2);
output_low(pin_d3);
}

output_bit(pin_b3,1);
output_bit(pin_b4,0);
output_bit(pin_b5,1);
output_bit(pin_b6,1);

if(!input(pin_b1)){
output_high(pin_d0);
output_low(pin_d1);
output_high(pin_d2);
output_low(pin_d3);
}

output_bit(pin_b3,1);
output_bit(pin_b4,1);
output_bit(pin_b5,0);
output_bit(pin_b6,1);

if(!input(pin_b1)){
output_low(pin_d0);
output_low(pin_d1);
output_low(pin_d2);
output_high(pin_d3);
}

output_bit(pin_b3,1);
output_bit(pin_b4,1);
output_bit(pin_b5,1);
output_bit(pin_b6,0);

if(!input(pin_b1)){
output_low(pin_d0);
output_low(pin_d1);
output_low(pin_d2);
output_low(pin_d3);
}
}
}
if(!input(pin_b2)){
{
output_bit(pin_b3,0);
output_bit(pin_b4,1);
output_bit(pin_b5,1);
output_bit(pin_b6,1);

if(!input(pin_b2)){
output_high(pin_d0);
output_high(pin_d1);
output_low(pin_d2);
output_low(pin_d3);
}

output_bit(pin_b3,1);
output_bit(pin_b4,0);
output_bit(pin_b5,1);
output_bit(pin_b6,1);

if(!input(pin_b2)){
output_low(pin_d0);
output_high(pin_d1);
output_high(pin_d2);
output_low(pin_d3);
}

output_bit(pin_b3,1);
output_bit(pin_b4,1);
output_bit(pin_b5,0);
output_bit(pin_b6,1);

if(!input(pin_b2)){
output_high(pin_d0);
output_low(pin_d1);
output_low(pin_d2);
output_high(pin_d3);
}

output_bit(pin_b3,1);
output_bit(pin_b4,1);
output_bit(pin_b5,1);
output_bit(pin_b6,0);

if(!input(pin_b2)){
output_high(pin_d0);
output_low(pin_d1);
output_high(pin_d2);
output_high(pin_d3);
}
}

}


}




}
