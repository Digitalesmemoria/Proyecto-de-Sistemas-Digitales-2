LIBRARY IEEE;
USE  IEEE.STD_LOGIC_1164.all;
USE  IEEE.STD_LOGIC_UNSIGNED.all;

ENTITY registro1 IS
	PORT(clock,reset,enable,clear: IN STD_LOGIC;
		 Ent : IN STD_LOGIC;
		 Q : OUT STD_LOGIC);
END registro1;

ARCHITECTURE solution OF registro1 IS

SIGNAL temp: STD_LOGIC;

BEGIN
	PROCESS(clock,reset)
	BEGIN
		if reset='0' then temp<='0';
		elsif (clock'event and clock='1') then
			if(enable='1') then 
				temp<=Ent;
			elsif (clear='1') then
				temp<='0';
			end if;
		end if;
	end process;
	Q<=temp;
END solution;
