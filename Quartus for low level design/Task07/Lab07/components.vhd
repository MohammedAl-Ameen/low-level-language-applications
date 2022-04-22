library ieee;
use ieee.std_logic_1164.all;

package components is

component mux is
	generic (n: integer:= 16);
port(sel : in std_logic_vector floor((log2(real(n))) downto 0);
	 in0,in1,in2,in3,in4,in5,in6,in7 : in std_logic_vector(n-1 downto 0);
	 output : out std_logic_vector(n-1 downto 0)
	 );
end component;



component fulladder is
port(
		a , b , cin : in std_logic;
		sum , carry : out std_logic
		);
		
end component;

component nfulladder is
generic(n:integer := 16);
port (a,b : in std_logic_vector (n-1 downto 0);
	  cin : in std_logic ;
	  sum:buffer std_logic_vector(n-1 downto 0);
	  carry : out std_logic; 
	  overflow : out std_logic);

end component;

component complement is
generic (n: integer:= 16);
	port(
		
		a: in std_logic_vector(n-1 downto 0);
		output :out std_logic_vector(n-1 downto 0)
	);
end component;

component increment is
generic (n: integer:= 16);
	port(
		
		a: in std_logic_vector(n-1 downto 0);
		output :out std_logic_vector(n-1 downto 0)
	);
end component;

component sub is
generic (n: integer:= 16);
	port(
		
		a , b : in std_logic_vector(n-1 downto 0);
		output :out std_logic_vector(n-1 downto 0)
	);
end component;

component dec is
port(
		generic (n: integer:= 16);
		a: in std_logic_vector(n-1 downto 0);
		output :out std_logic_vector(n-1 downto 0)
	);
end component;

component myxor is
generic (n: integer:= 16);
	port(a,b : in std_logic_vector(n-1 downto 0);
		 c : out std_logic_vector(n-1 downto 0));
end myxor;
end component;

component shiftright is
generic (n: integer:= 16);
	port(a: in std_logic_vector(n-1 downto 0)
		 output: buffer std_logic_vector(n-1 downto 0)
	);
end component;

component shiftleft is
generic (n: integer:= 16);
	port(a: in std_logic_vector(n-1 downto 0)
		 output: buffer std_logic_vector(n-1 downto 0)
	);
end component;

end components;
