library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Adder is
   port
   (
      A: in std_logic;
      B: in std_logic;
      cin: in std_logic;
      cout: out std_logic;
      sum : out std_logic);
       
      
end Adder;

architecture Action of Adder is
begin

sum <= A xor B xor cin;
cout <= (A and B) OR (cin AND A) or (cin and B);


end architecture Action;