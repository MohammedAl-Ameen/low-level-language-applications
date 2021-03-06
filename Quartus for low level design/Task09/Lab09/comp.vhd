library ieee;
use ieee.std_logic_1164.all;

package comp is 
       
component decoder is
port (input : in std_logic_vector (2 downto 0);
       enable : IN STD_LOGIC ;
       output : out std_logic_vector (7 downto 0));
       
end component;

component jk_ff is
port(j,k,inc,clk , clr:in std_logic;
q:out std_logic);
end component;


component synchcnt is
port(inc,clk, clr:in std_logic;
q:buffer std_logic_vector(3 downto 0));
end component;

component decoder16 is
port (input :IN STD_LOGIC_VECTOR (3 DOWNTO 0 );
	  output : OUT STD_LOGIC_VECTOR (15 DOWNTO 0 ));
end component;

component T is
PORT 
(
	INC,CLR,CLK : IN STD_LOGIC ;
	output : OUT STD_LOGIC_VECTOR (15 DOWNTO 0)
);
end component;

end;