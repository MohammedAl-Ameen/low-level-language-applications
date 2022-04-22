library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity counter is
	generic(n: integer:=8);
	port(clk,load,enable,rest :in std_logic;
		counter: buffer std_logic_vector(n-1 downto 0)
	);
end counter;

architecture counter of counter is 
begin 
	process(clk, rest)
	begin
		if(rest = '1') then 
			counter<=(others => '0');
		elsif (rising_edge(clk)) then
			if(load = '1') then
				counter<=(others => '0');
			elsif(enable = '1') then 
				counter <= counter + '1';
			end if;

		end if;
	end process;
end counter;




