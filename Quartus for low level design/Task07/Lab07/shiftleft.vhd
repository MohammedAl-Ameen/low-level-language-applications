library ieee;
use ieee.std_logic_1164.all;

entity shiftleft is
	generic (n: integer:= 16);
	port(a: in std_logic_vector(n-1 downto 0)
		 output: buffer std_logic_vector(n-1 downto 0)
	);
end shiftleft;


architecture shiftleft of shiftleft is
begin 
	output <= a(n-2 downto 0)& '0';
end shiftleft;