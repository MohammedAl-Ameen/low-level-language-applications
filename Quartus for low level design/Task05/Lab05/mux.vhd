library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity mux is 
port (
sel , input0 , input1 : in std_logic;
output: out std_logic

);
end;

architecture mux of mux is
begin
output <= (input0 and not sel) or (input1 and sel);

end;