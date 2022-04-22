library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity shiftright is
generic (n: integer:= 8);
port(
	input: in std_logic_vector(n-1 downto 0);
	load, enable ,clk , rest: in std_logic;
	output: buffer std_logic_vector(n-1 downto 0)

);

end shiftright;

architecture shiftright of shiftright is
begin
	process(clk,rest)
begin
	if(rest = '1') then
		output <= (others => '0');
	elsif(rising_edge(clk)) then 
		if(load = '1') then 
			output <= input;
		elsif (enable = '1') then 
			output <= '0' & output(n-1 downto 1);
		else 
			output <= output;
		end if;
	end if;
	end process;
end shiftright;