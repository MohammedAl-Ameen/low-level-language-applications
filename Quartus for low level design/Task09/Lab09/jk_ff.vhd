library ieee;
use ieee.std_logic_1164.all;

entity jk_ff is
	port(j,k,inc,clk , clr:in std_logic;
	q:out std_logic);
end jk_ff;

architecture behavioural of jk_ff is
signal input:std_logic_vector(1 downto 0);
signal set:std_logic;
	begin
		input<=j&k;
		process(clk,j,k,inc , clr)
			begin
			if(clr = '0') then
				if(inc='1')then
					if (rising_edge(clk)) then
						case input is
							when "10"=> set <='1';
							when "01"=> set <='0'; 
							when "11"=> set <= not set;
							when others=> null;
						end case;
					end if;
				else
				 set <='1';
				end if;
				else
				 set <= '1';
				end if;
	
q<=set;
		end process;
end behavioural;
