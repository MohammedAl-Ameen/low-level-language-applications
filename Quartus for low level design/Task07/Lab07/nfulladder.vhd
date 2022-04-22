LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
use work.components.all;


entity nfulladder is 
generic(n:integer := 16);
port (a,b : in std_logic_vector (n-1 downto 0);
	  cin : in std_logic ;
	  sum:buffer std_logic_vector(n-1 downto 0);
	  carry : out std_logic; 
	  overflow : out std_logic);
end; 

architecture nfulladder of nfulladder is 
signal c : std_logic_vector(n-2 downto 0);

begin
-- 16  1 14 

FA0 : fulladder  port map( a(0), b(0), cin , sum(0), c(0) );

gen_loop : for i in 1 to n-2 generate
FAi : fulladder port map(a(i), b(i), c(i-1), sum(i), c(i) );
end generate;
FAlast : fulladder port map(a(n-1), b(n-1), c(n-2), sum(n-1), carry);

overflow <= ( sum(15) xor  sum(14) );

end nfulladder ;
