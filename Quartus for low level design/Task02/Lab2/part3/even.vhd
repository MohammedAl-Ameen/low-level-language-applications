library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity even is 
port (
input: in std_logic_vector(2 downto 0);
p: out std_logic
);
end;

architecture action of even is 

begin 

p <= input(2) xor input(1) xor input(0);


end action;