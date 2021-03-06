library ieee;
use ieee.std_logic_1164.all;

entity State is 
	port(
	input , clk , rest: in std_logic;
	output , y: out std_logic_vector(1 downto 0)
	
	
	);
	
end State;

architecture State of State is

	type state is (s0,s1,s2,s3);
	signal currentstate: state:=s0;

		begin 

			process(clk,rest)
				begin 
					if(rest = '1') then currentstate <=s0;
					elsif(rising_edge(clk)) then
						if(currentstate = s0) then 
							
							case input is 
								when '0'=> currentstate <= s1; output(0) <= '1';
								when '1'=> currentstate <= s0; output(0) <= '1';
							end case;
						elsif (currentstate = s1) then
							case input is
								when '0' => currentstate <= s2; output(0) <= '1';
								when '1' => currentstate <= s1; output(0) <= '1';
							end case;
						elsif (currentstate = s2) then
							case input is
								when '0' => currentstate <= s3; output(0) <= '0';
								when '1' => currentstate <= s2; output(0) <= '0';
							end case;
						elsif (currentstate = s3) then
							case input is
								when '0' => currentstate <= s0; output(0) <= '1';
								when '1' => currentstate <= s3; output(0) <= '1';
							end case;
						end if;
					end if;		
			end process;
			
			output(1)<= '0' when (currentstate = s0 and input = '0') else 
						'1' when (currentstate = s0 and input = '1') else 
						'0' when (currentstate = s1 and input = '0') else 
						'1' when (currentstate = s1 and input = '1') else 
						'0' when (currentstate = s2 and input = '0') else 
						'1' when (currentstate = s2 and input = '1') else
						'0' when (currentstate = s3 and input = '0') else 
						'1' when (currentstate = s3 and input = '1');
			
				   y<= "00" when currentstate = s0 else 
					   "01" when currentstate = s1 else
					   "10" when currentstate = s2 else
					   "11" when currentstate = s3;						
				
			
end architecture;