library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
library work;
use work.components.all;


entity bitcounting is
generic(n:integer:=8);
port(start,clk,rest:in std_logic;
	 input :in std_logic_vector(n-1 downto 0);
	 done: buffer std_logic;
	 cout :buffer std_logic_vector(n-1 downto 0));
end;


architecture bitcounting of bitcounting is
signal a0 , flag , enable_a , load_a , enable_counter , load_counter , final: std_logic :='0';
signal A , number : std_logic_vector(n-1 downto 0);

begin
number<= (others => '0');
S1: controller generic map(n=>n) port map (clk , start , rest, a0 , flag , done , enable_a , enable_counter , load_a , load_counter);

S2: shiftright generic map(n => n) port map (input , load_a , enable_a , clk , rest , A);








S3 : counter generic map(n => n) port map (clk , load_counter , enable_counter , rest   , cout );
a0 <= A(0);
flag <= '1' when A = number else '0';



end bitcounting;