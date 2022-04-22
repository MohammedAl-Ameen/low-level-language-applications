library ieee;
use ieee.std_logic_1164.all;
use work.components.all;

entity mux is
generic (n: integer:= 16);
port(sel : in std_logic_vector floor((log2(real(n))) downto 0);
	 in0,in1,in2,in3,in4,in5,in6,in7 : in std_logic_vector(n-1 downto 0);
	 output : out std_logic_vector(n-1 downto 0)
	 );
end;


architecture mux of mux is 
begin 
process(sel)
begin
	if(sel = "000") then 
		output <= in0;
	elsif (sel = "001") then
		output<= in1;
	elsif (sel = "010") then
		output<= in2;
	elsif (sel = "011") then
		output<= in3;
	elsif (sel = "100") then
		output<= in4;
	elsif (sel = "101") then
		output<= in5;
	elsif (sel = "110") then
		output<= in6;
	elsif (sel = "111") then
		output<= in7;
	end if;
end process;
end mux;
		
		