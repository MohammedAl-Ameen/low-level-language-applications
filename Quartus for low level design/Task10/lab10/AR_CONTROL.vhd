LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
use work.REF.all;

entity AR_CONTROL is 
port ( X  : IN STD_LOGIC_VECTOR (36 DOWNTO 0 );
	   LOAD , ICNR , CLEAR : OUT STD_LOGIC );END;



ARCHITECTURE AR_CONTROL OF AR_CONTROL is 
signal p : std_logic; 
signal r :std_logic;
BEGIN
r <= X(19) and not X(20) and X(32);
p <= X(19) and X(20) and X(32);



LOAD <= X(36) or (NOT X(7) AND X(20) AND X(33));
CLEAR <= X(36);
ICNR <= X(15) AND X(32);

END;