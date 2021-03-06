library ieee;
use ieee.std_logic_1164.all;
entity decoder is 
port (
sel: in std_logic_vector(2 downto 0);
output: out std_logic;
enable: in std_logic
);
end;

architecture decoder of decoder is
begin 
	process (sel, enable)
		begin 
			output <= ((not sel(2) and not sel(1) and sel(0)) or (sel(2) and not sel(1) and not sel(0)) or (sel(2) and not sel(1) and sel(0)) or ( sel(2) and sel(1) and sel(0))) and not enable;
	end process;
end decoder;