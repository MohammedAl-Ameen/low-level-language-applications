library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity controller is
generic(n:integer:=8); 
port(clk,start, rest, a0 , z :in std_logic;
	  done, enable_a , enable_conter, load_a , load_conter: out std_logic

 );
 end controller;
 
 architecture controller of controller is
type states is (s1,s2,s3);
signal CurrentState,nextState: states := S1; 

begin 

process (clk , rest)
begin
	if(rest = '1') then 
		currentstate <= s1;
	elsif (rising_edge(clk)) then
		currentstate <= nextstate;
	end if;
end process;

process(currentstate , start)
begin 
	case currentstate is 
		when s1=>
			done <= '0';
			enable_a <='0';
			enable_conter <='0';
			load_a <='1';
			load_conter <='1';
			
				if(start = '1')then 
					nextstate <= s2;
				else
					nextstate <= s1;
				end if;
		when s2 =>
			enable_a <='1';
			load_a <='0';
			load_conter <='0';
			done <= '0';
			enable_conter <='0';
			if(z = '1')then
				nextstate <= s3;
			elsif (a0 = '1') then 
				nextstate <= s2;
			elsif(a0 = '0') then
				nextstate <= s2;
				enable_conter <='1';
			end if;
			
		when s3 =>
			done <= '1';
			enable_a <='0';
			enable_conter <='0';
			if(start = '0') then
				nextstate <= s1;
			else
				nextstate <= s3;
			end if;
			
		end case;
	end process;
end controller;



