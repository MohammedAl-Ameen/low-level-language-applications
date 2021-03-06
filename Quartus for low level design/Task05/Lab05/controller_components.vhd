library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;


package controller_components is
          
 component mux 
    port (
sel , input0 , input1 : in std_logic;
output: out std_logic);
	end component ;
     
 component decoder 
     port (
sel: in std_logic_vector(1 downto 0);
output0 , output1 , output2 ,output3 : out std_logic
);
     end component ;
     
 component counter 
port (
clk , enable , rst : in std_logic;
output: buffer std_logic_vector(1 downto 0)

);
     end component ;
     
     
end;

