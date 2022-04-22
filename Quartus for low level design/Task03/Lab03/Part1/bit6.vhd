library ieee;
use ieee.std_logic_1164.all;

entity bit6 is
port(clk, clrn: in std_logic;
input: in std_logic_vector(6 downto 1);
output: buffer std_logic_vector(6 downto 1)
);

end bit6;

architecture bit6 of bit6 is 
begin 
process(clk, clrn)
begin 
	if(clrn = '0') then
		output <= "000000";
	elsif(rising_edge(clk)) then 
		output <= input;
	end if;
end process;
end bit6;