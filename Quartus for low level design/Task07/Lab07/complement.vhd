library ieee;
use ieee.std_logic_1164.all;
use work.components.all;

entity complement is 
generic (n: integer:= 16);
		port(
		
		a: in std_logic_vector(n-1 downto 0);
		output :out std_logic_vector(n-1 downto 0)
	);
	
end complement;


architecture complement of complement is
	signal n : std_logic_vector(n-1 downto 0);
begin 
n <= not(a);
fa: nfulladder port map(n , x"0001" , '0' , output);
end;