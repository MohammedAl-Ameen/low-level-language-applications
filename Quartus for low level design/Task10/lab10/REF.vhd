library ieee;
use ieee.std_logic_1164.all;

package REF is 

component AR_CONTROL is
port ( X  : IN STD_LOGIC_VECTOR (36 DOWNTO 0 );
	   LOAD , ICNR , CLEAR : OUT STD_LOGIC );
end component;

component PC_CONTROL is
port ( CUO : IN STD_LOGIC_VECTOR (36 DOWNTO 0 );
		 AC,DR : IN STD_LOGIC_VECTOR (15 DOWNTO 0) ;
	   FGO , FGI , E : IN STD_LOGIC ; 
	   PL , INR , CLR : OUT STD_LOGIC 
		);
end component;

component DR_CONTROL is
port ( CUO : IN STD_LOGIC_VECTOR (36 DOWNTO 0 );
		 AC,DR : IN STD_LOGIC_VECTOR (15 DOWNTO 0) ;
	   FGO , FGI , E : IN STD_LOGIC ; 
	   PL , INR , CLR : OUT STD_LOGIC 
		);
end component;

component IR_CONTROL is
port ( CUO : IN STD_LOGIC_VECTOR (36 DOWNTO 0 );
		 AC,DR : IN STD_LOGIC_VECTOR (15 DOWNTO 0) ;
	   FGO , FGI , E : IN STD_LOGIC ; 
	   PL , INR , CLR : OUT STD_LOGIC 
		);
end component;

component TR_CONTROL is
port ( CUO : IN STD_LOGIC_VECTOR (36 DOWNTO 0 );
		 AC,DR : IN STD_LOGIC_VECTOR (15 DOWNTO 0) ;
	   FGO , FGI , E : IN STD_LOGIC ; 
	   PL , INR , CLR : OUT STD_LOGIC 
		);
end component;
		
component MEM_CONTROL is
port ( CUO : IN STD_LOGIC_VECTOR (36 DOWNTO 0 );
		 AC,DR : IN STD_LOGIC_VECTOR (15 DOWNTO 0) ;
	   FGO , FGI , E : IN STD_LOGIC ; 
	   PL , INR , CLR : OUT STD_LOGIC 
		);
end component;

component SC_CONTROL is
port ( CUO : IN STD_LOGIC_VECTOR (36 DOWNTO 0 );
		 AC,DR : IN STD_LOGIC_VECTOR (15 DOWNTO 0) ;
	   FGO , FGI , E : IN STD_LOGIC ; 
	   PL , INR , CLR : OUT STD_LOGIC 
		);
end component;

end ;