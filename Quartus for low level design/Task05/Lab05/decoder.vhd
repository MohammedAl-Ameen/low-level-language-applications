library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity decoder is 
port (
sel: in std_logic_vector(1 downto 0);
output0 , output1 , output2 ,output3 : out std_logic
);
end;

architecture decoder of decoder is
begin
output0 <= not sel(0) and not sel(1);
output1 <= not sel(0) and sel(1);
output2 <= sel(0) and not sel(1);
output3 <= sel(0) and sel(1);
 


end;