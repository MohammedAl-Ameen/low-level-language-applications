library ieee;
use ieee.std_logic_1164.all;
use work.components.all;

entity ALU is 
port(a,b : in std_logic_vector(15 downto 0);
	 alu_op: in std_logic_vector(2 downto 0);
	 result : buffer std_logic_vector(15 downto 0);
	 zero,carry,overflow : out std_logic
	  );
end ALU;


architecture ALU  of ALU is 

signal SIG:R ;
signal bcomp : std_logic_vector (15 downto 0);
signal Carry : std_logic_vector (4 downto 0) ;
signal OVERFLOW : std_logic_vector (4 downto 0) ;



begin 

MUX0 : MU_X port map ( SIG , Result , ALUOP);

FA1 : FA16 generic map(n => 16) port map (A , x"FFFF" , '0' , SIG(0) , Carry(0) ,OVERFLOW(0) );

FA2 : FA16 generic map(n => 16) port map ((NOT B) , X"0001" ,'0', bcomp , Carry(1),OVERFLOW(1) );

FA3 : FA16 generic map(n => 16) port map ( A , bcomp ,'0', SIG(1) , Carry(2),OVERFLOW(2) );

SIG(2) <= A(15 DOWNTO 1) & '0' ; 
SIG(3) <= '0' & A(14 DOWNTO

