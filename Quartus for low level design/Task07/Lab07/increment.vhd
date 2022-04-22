library ieee;
use ieee.std_logic_1164.all;
use work.components.all;

entity increment is 
		generic (n: integer:= 16);
	port(
	
		a: in std_logic_vector(n-1 downto 0);
		output :out std_logic_vector(n-1 downto 0)
	);
	
end increment;


architecture increment of increment is
	
begin 

fa: nfulladder port map(a , x"0001" , '0' , output);
end;