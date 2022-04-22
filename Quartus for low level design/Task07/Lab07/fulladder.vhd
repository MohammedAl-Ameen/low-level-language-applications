library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity fulladder is 
	port(
		a , b , cin : in std_logic;
		sum , carry : out std_logic
		);
		
end fulladder;

architecture fulladder of fulladder os 
	begin
		sum <= ((a xor b) xor cin);
		carry <= (a and b) or (cin and a) or (cin and b);
	end;