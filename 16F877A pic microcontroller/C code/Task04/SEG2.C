# include "16F877A.h"
# use delay(clock=4000000)
void main()
{
int n;
int8 anum[10]; 
 	anum[0] = 0x3f; 
	anum[1] = 0x06;
	anum[2] = 0x5b;
	anum[3] = 0x4f;
while (1)
	{
	if(input(pin_d0)^input(pin_d1))
		for ( n = 0; n < 4; n++ )
		{	output_c(anum[n]);
 			delay_ms(1000);	}
	
	else
		for ( n = 3; n<255; n-- )
		 	{output_c(anum[n]);
 			delay_ms(1000);	}
	
	}
}




