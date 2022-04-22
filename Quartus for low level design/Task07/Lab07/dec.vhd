library ieee;
use ieee.std_logic_1164.all;
use work.components.all;
entity dec is 
	generic (n: integer:= 16);
	port(
		
		a: in std_logic_vector(n-1 downto 0);
		output :out std_logic_vector(n-1 downto 0)
	);
	
end dec;


architecture dec of dec is
	
begin 

fa: nfulladder port map(a , x"1111" , '0' , output);
end;