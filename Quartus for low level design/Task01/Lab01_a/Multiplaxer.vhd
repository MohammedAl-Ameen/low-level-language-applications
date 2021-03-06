library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Multiplaxer is
   port
   (
      input: in std_logic_vector(3 downto 0);
      sel: in std_logic_vector(1 downto 0);
      output : out std_logic);
      
end Multiplaxer;

architecture Action of Multiplaxer is
begin

   output <= ((not sel(0)) and (not sel(1)) and input(0)) or ((not sel(0)) and (sel(1)) and input(1)) or ((sel(0)) and (not sel(1)) and input(2)) or ((sel(0)) and (sel(1)) and input(3));


end architecture Action;