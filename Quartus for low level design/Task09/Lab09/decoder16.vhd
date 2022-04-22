library ieee;
use ieee.std_logic_1164.all;
use work.comp.all;


ENTITY decoder16 IS
port (input :IN STD_LOGIC_VECTOR (3 DOWNTO 0 );
	  output : OUT STD_LOGIC_VECTOR (15 DOWNTO 0 ));
end;



ARCHITECTURE decoder16 OF decoder16 IS 
BEGIN


DECODER1 : decoder PORT MAP ( input(2 DOWNTO 0 ) , input(3) , output(15 DOWNTO 8));
DECODER2 : decoder  PORT MAP ( input(2 DOWNTO 0 ) ,  NOT input(3) , output(7 DOWNTO 0));
  
 
END;