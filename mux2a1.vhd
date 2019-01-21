library ieee;
use ieee.std_logic_1164.all;

Entity mux2a1 is

PORT(	A: IN std_logic;
		SLECT: IN std_logic;
		Q: OUT std_logic);
end mux2a1;

Architecture sol of mux2a1 is

Begin
	
process(a,SLECT)
begin

case SLECT is
  when '0' => Q <= '0';
  when others => Q <= A; 
end case; 


end process;
	
end sol;