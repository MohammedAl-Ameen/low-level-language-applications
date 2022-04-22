#include "16F877A.h"
#use delay (clock=4000000)
int akey;
void scankey()
{
key =0;
while(akey==0)
	{
	output_d(255); output_low(PIN_d5);
	if(!input(PIN_c0))
		{ akey =0x4f;  while(!input(PIN_c0)) { } ;  }
	if(!input(PIN_c1))
		{ akey = 0x5c;  while(!input(PIN_c1)) { } ; }
	if(!input(PIN_c2))
		{ akey = 0x06;  while(!input(PIN_c2)) { } ; }
		}
	}
void main()
{	while (1)
	{scankey();	output_b(akey);}
}
