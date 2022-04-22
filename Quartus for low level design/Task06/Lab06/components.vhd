library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

package components is 

component shiftright is
	generic (n: integer:= 8);
port(
	input: in std_logic_vector(n-1 downto 0);
	load, enable ,clk , rest: in std_logic;
	output: buffer std_logic_vector(n-1 downto 0)

);

end component;

component controller is 
generic (n: integer:= 8);
port(clk,start, rest, a0 , z  :in std_logic;
	 done, enable_a , enable_conter, load_a , load_conter: out std_logic
	
 );
end component;


component counter is 
generic (n: integer:= 8);
	port(clk,load,enable,rest :in std_logic;
		counter: buffer std_logic_vector(n-1 downto 0)
	);
end component;




end components;