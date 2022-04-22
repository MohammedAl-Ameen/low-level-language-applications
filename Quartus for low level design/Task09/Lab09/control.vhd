library ieee;
USE IEEE.STD_LOGIC_1164.ALL;
use work.comp.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

ENTITY control IS 
PORT (INC,CLR,CLK : IN STD_LOGIC ;
	  IR : IN STD_LOGIC_VECTOR (15 DOWNTO 0 );
	  output : OUT std_logic_vector (36 downto 0 ));
END ; 

ARCHITECTURE control OF control is 
SIGNAL D : STD_LOGIC_VECTOR (7 DOWNTO 0 );
begin 

output(11 DOWNTO 0 ) <= IR(11 DOWNTO 0 ) ; 
DE : decoder PORT MAP ( IR(14 DOWNTO 12) ,'1' , D );
output(19 DOWNTO 12 ) <= D; 
output(20) <= IR (15);
TIMINGU : T PORT MAP ( INC , CLK, CLR , output(36 DOWNTO 21) );

end control;