library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity encoder is 
port (
i: in std_logic_vector(3 downto 0);
output: out std_logic_vector(1 downto 0);
v: out std_logic);
end;

architecture action of encoder is 

begin 

output(1) <= i(2) or i(3);
output(0) <= (i(3) or (i(1) and (not i(2))));
v <= i(0) or i(1) or i(2) or i(3);


end action;