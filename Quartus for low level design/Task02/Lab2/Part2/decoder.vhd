library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity decoder is 
port (
i: in std_logic_vector(1 downto 0);
output: out std_logic_vector(3 downto 0);
v: in std_logic);
end;

architecture action of decoder is 

begin 

output(0) <= not v and not i(0) and not i(1);
output(1) <= not i(0) and i(1) and not v;
output(2) <= i(0) and not i(1) and not v;
output(3) <= not v and i(0) and i(1);



end action;