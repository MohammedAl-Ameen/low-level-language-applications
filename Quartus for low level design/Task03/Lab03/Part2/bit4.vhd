library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity bit4 is
 port(clk, CLR ,Decr: in std_logic;
       output:buffer std_logic_vector(3 downto 0));

end bit4;
architecture bit4 of bit4 is
 begin
 process (clk)
 begin
 if (rising_edge(clk)) then
   if(CLR ='0') then
     output <= "1111";
   elsif(Decr='1') then
        output <= output - '1';
        
end if;
end if;

end process;
end bit4;