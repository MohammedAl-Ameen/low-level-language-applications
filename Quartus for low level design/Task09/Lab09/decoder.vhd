library ieee;
use ieee.std_logic_1164.all;


entity decoder is
port (input : in std_logic_vector (2 downto 0);
       enable : IN STD_LOGIC ;
       output : out std_logic_vector (7 downto 0));
end ; 

architecture decoder of decoder is
begin



output <= X"01"  when input= "000" AND enable ='1' ELSE
      X"02"  when input= "001" AND enable ='1' ELSE
      X"04"  when input= "010" AND enable ='1' ELSE
      X"08"  when input= "011" AND enable ='1' ELSE
      X"10"  when input= "100" AND enable ='1' ELSE
      X"20"  when input= "101" AND enable ='1' ELSE
      X"40"  when input= "110" AND enable ='1' ELSE
      X"80"  when input= "111" AND enable ='1' ELSE 
      X"00" WHEN  enable = '0';


end;