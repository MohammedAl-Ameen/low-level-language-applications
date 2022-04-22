library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity counter is 
port (
clk , enable , rst : in std_logic;
output: buffer std_logic_vector(1 downto 0)

);
end;

architecture counter of counter is
	begin
		process(clk , enable , rst)
			begin 
				if(enable = '0') then output <= "XX";
				elsif(rst = '0') then output <= "00";
				elsif(rising_edge(clk)) then output <= output + 1;
				end if;
		end process;
end;