library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;
library work;
use work.controller_components.all;


entity controller is 
port (
fast , slow , speed_select , init , run : in std_logic;
pump0, pump1 , motor0 , motor1: out std_logic


);
end ;

architecture controller of controller is
	signal clk_op : std_logic;
	signal out_in : std_logic_vector(0 to 1);
begin
		
	
		U0 : mux port map( speed_select ,fast , slow , clk_op );
		U1 : counter port map(clk_op , run , init , out_in );
		U2 : decoder port map (out_in , pump0 , motor0 , pump1 , motor1);
		
		
	

end;