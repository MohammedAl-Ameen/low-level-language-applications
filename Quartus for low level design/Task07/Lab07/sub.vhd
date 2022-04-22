library ieee;
use ieee.std_logic_1164.all;
use work.components.all;

entity sub is 
generic (n: integer:= 16);
		port(
		
		a , b : in std_logic_vector(n-1 downto 0);
		output :out std_logic_vector(n-1 downto 0)
	);
	
end sub;


architecture sub of sub is
	signal notb : std_logic_vector(n-1 downto 0);
	
begin 

fa0: complement port map(b , notb);
fa1: nfulladder port map(a , notb , '0' , output);

end;