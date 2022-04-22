library ieee;
use ieee.std_logic_1164.all;

entity myxor is 
generic (n: integer:= 16);
	port(a,b : in std_logic_vector(n-1 downto 0);
		 c : out std_logic_vector(n-1 downto 0));
end myxor;

architecture myxor of myxor is 
begin
c <= a xor b;
end myxor;
