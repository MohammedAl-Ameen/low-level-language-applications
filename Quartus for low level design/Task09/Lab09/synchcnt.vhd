library ieee;
use ieee.std_logic_1164.all;
use work.comp.all;


entity synchcnt is

port(inc,clk, clr:in std_logic;
q:buffer std_logic_vector(3 downto 0));
end synchcnt;

architecture behavioural of synchcnt is 




signal i,j,k:std_logic;
	begin

	a1:jk_ff port map('1','1',inc,clk,clr,q(0));
	i<=q(0);
	a2:jk_ff port map(i,i,inc,clk,clr,q(1));
	j<=q(0) and q(1);
	a3:jk_ff port map(j,j,inc,clk,clr,q(2));
	k<=q(0) and q(1) and q(2);
	a4:jk_ff port map(k,k,inc,clk,clr,q(3));
end behavioural;
