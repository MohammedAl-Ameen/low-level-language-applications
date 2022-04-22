1#include "16F877A.h"
#use delay(clock=8000000)
#use rs232(baud=4800,xmit=pin_c6,rcv=pin_c7)
   #include <stdio.h>
   #define QUIT '3'
   int choice=0;
   int  get_menu_choice( void );
   void display_seconds( void );
  main()
  {
    while (choice !=QUIT)
      {
         choice = get_menu_choice();

         if (choice =='1')
             printf("Hello\r" );
         else
         {
             if (choice =='2')
                 display_seconds();
         }
      }
      printf("You chose to quit!\r");
      printf("reset your simulater to start again\r");

      return 0;
  }

  int get_menu_choice( void )
  {
      int selection = 0;
      do
      {
          printf( "\r" );
          printf( "1 - Hello\r" );
          printf( "2 - wait 10 seconds on Display \r");
          printf( "3 - Quit\r");
          printf( "\r" );
          printf( "Enter a selection:\r" );
          selection=getc( );
       }while (selection <'1'|| selection >'3' );

       return selection;
  }

  void display_seconds(void)
  {int n;
       for (n=0;n<10;n++)
		{	output_d(n);
		delay_ms(1000);
		}
  }

