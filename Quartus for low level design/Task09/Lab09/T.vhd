LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
use work.comp.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

ENTITY T IS 

PORT 
(
	INC,CLK,CLR : IN STD_LOGIC ;
	output : OUT STD_LOGIC_VECTOR (15 DOWNTO 0)
);

END; 


ARCHITECTURE T OF T IS
SIGNAL CD : STD_LOGIC_VECTOR ( 3 DOWNTO 0 ) ;
BEGIN

COUNT  : synchcnt PORT MAP (INC , CLK , CLR , CD(3 DOWNTO 0) ) ;
DEC1   : decoder16  PORT MAP (CD  , output );


END; 