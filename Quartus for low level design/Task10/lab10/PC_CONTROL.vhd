LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
use work.REF.all;

entity PC_CONTROL is 
port ( CUO : IN STD_LOGIC_VECTOR (36 DOWNTO 0 );
		 AC,DR : IN STD_LOGIC_VECTOR (15 DOWNTO 0) ;
	   FGO , FGI , E : IN STD_LOGIC ; 
	   PL , INR , CLR : OUT STD_LOGIC 
		);
END;



ARCHITECTURE PC_CONTROL OF PC_CONTROL IS 
SIGNAL D : STD_LOGIC_VECTOR (7 DOWNTO 0);
SIGNAL T : STD_LOGIC_VECTOR (15 DOWNTO 0);
SIGNAL B : STD_LOGIC_VECTOR (11 downto 0);
SIGNAL p,r : std_logic; 
SIGNAL I,DRR : STD_LOGIC;
SIGNAL A : STD_LOGIC; 
BEGIN
D <= CUO(19 DOWNTO 12);
B <= CUO(11 DOWNTO 0);

PROCESS(D)
begin 
L1 : FOR i in 0 to  15 loop 
T( i ) <= CUO(36 - i); 
end  loop;

if (AC = X"0000") THEN A <= '1' ; 
ELSIF (DR = X"0000") THEN DRR <= '1'; 
END IF;
END PROCESS;

I <= CUO(20);
r <= CUO(19) and (not CUO(20)) and CUO(32);
p <= CUO(19) and CUO(20) and CUO(32);

PL <= (D(4) AND T(4)) AND (D(5) AND T(5));
CLR <= '0';
INR <= ( (r AND B(4) AND (NOT AC(15))) OR ( r AND B(3) AND AC(15)) or (r AND B(1) AND (NOT E)) OR (r AND B(2) AND A ) or (D(6) AND T(6) and (not DRR )) or (p AND B(9) AND FGI) or (p AND B(8) AND FGO) or (T(1)) or T(2));

END;