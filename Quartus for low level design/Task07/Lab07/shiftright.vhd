library ieee;
use ieee.std_logic_1164.all;

entity shiftright is
	generic (n: integer:= 16);
	port(a: in std_logic_vector(n-1 downto 0)
		 output: buffer std_logic_vector(n-1 downto 0)
	);
end shiftright;


architecture shiftright of shiftright is
begin 
	output <= '0' &a(n-1 downto 1);
end shiftright;