library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
 
entity RELOJ is
   port( 	Enable: in std_logic;
			clear: in std_logic;
			Clock: in std_logic;
			Reset: in std_logic;
			seg2: out std_logic;
			seg4: out std_logic;
			seg6: out std_logic;
			seg8: out std_logic;
			seg10: out std_logic;
			seg12: out std_logic;
			seg14: out std_logic;
			seg16: out std_logic;
			seg18: out std_logic;
			seg20: out std_logic;
			seg5: out std_logic;
			seg3: out std_logic
			);
end RELOJ;
 
architecture solve of RELOJ is
   signal temp: std_logic_vector(7 downto 0):="00000000";
begin   
process(Clock,Reset,temp)
   begin
		
		if Reset='0' then
		temp <= "00000000";
		seg2<='0';
		seg4<='0';
		seg6<='0';
		seg8<='0';
		seg10<='0';
		seg12<='0';
		seg14<='0';
		seg16<='0';
		seg18<='0';
		seg20<='0';
		seg5<='0';
		seg3<='0';
		elsif clear='1' then
			temp<="00000000";
					seg2<='0';
		seg4<='0';
		seg6<='0';
		seg8<='0';
		seg10<='0';
		seg12<='0';
		seg14<='0';
		seg16<='0';
		seg18<='0';
		seg20<='0';
		seg5<='0';
		seg3<='0';
		elsif(Clock'event and Clock='1') then
				if Enable='1' then
					if temp="11111111" then
						temp<="00000000";
					else
						
						if (temp="00000010") then
							seg2<='1';
							seg4<='0';
							seg6<='0';
							seg8<='0';
							seg10<='0';
							seg12<='0';
							seg14<='0';
							seg16<='0';
							seg18<='0';
							seg20<='0';
							seg5<='0';
							seg3<='0';
						elsif (temp="00000100") then
							seg2<='0';
							seg4<='1';
							seg6<='0';
							seg8<='0';
							seg10<='0';
							seg12<='0';
							seg14<='0';
							seg16<='0';
							seg18<='0';
							seg20<='0';
							seg5<='0';
							seg3<='0';
						elsif (temp="00000110") then
							seg2<='0';
							seg4<='0';
							seg6<='1';
							seg8<='0';
							seg10<='0';
							seg12<='0';
							seg14<='0';
							seg16<='0';
							seg18<='0';
							seg20<='0';
							seg5<='0';
							seg3<='0';
						
						elsif (temp="00001000") then
							seg2<='0';
							seg4<='0';
							seg6<='0';
							seg8<='1';
							seg10<='0';
							seg12<='0';
							seg14<='0';
							seg16<='0';
							seg18<='0';
							seg20<='0';
							seg5<='0';
							seg3<='0';
						
						elsif (temp="00001010") then
							seg2<='0';
							seg4<='0';
							seg6<='0';
							seg8<='0';
							seg10<='1';
							seg12<='0';
							seg14<='0';
							seg16<='0';
							seg18<='0';
							seg20<='0';
							seg5<='0';
							seg3<='0';
						
						elsif (temp="00001100") then
							seg2<='0';
							seg4<='0';
							seg6<='0';
							seg8<='0';
							seg10<='0';
							seg12<='1';
							seg14<='0';
							seg16<='0';
							seg18<='0';
							seg20<='0';
							seg5<='0';
							seg3<='0';
						
						elsif (temp="00001110") then
							seg2<='0';
							seg4<='0';
							seg6<='0';
							seg8<='0';
							seg10<='0';
							seg12<='0';
							seg14<='1';
							seg16<='0';
							seg18<='0';
							seg20<='0';
							seg5<='0';
							seg3<='0';
						
						elsif (temp="00010000") then
							seg2<='0';
							seg4<='0';
							seg6<='0';
							seg8<='0';
							seg10<='0';
							seg12<='0';
							seg14<='0';
							seg16<='1';
							seg18<='0';
							seg20<='0';
							seg5<='0';
							seg3<='0';
						
						elsif (temp="00010010") then
							seg2<='0';
							seg4<='0';
							seg6<='0';
							seg8<='0';
							seg10<='0';
							seg12<='0';
							seg14<='0';
							seg16<='0';
							seg18<='1';
							seg20<='0';
							seg5<='0';
							seg3<='0';
						
						elsif (temp="00010100") then
							seg2<='0';
							seg4<='0';
							seg6<='0';
							seg8<='0';
							seg10<='0';
							seg12<='0';
							seg14<='0';
							seg16<='0';
							seg18<='0';
							seg20<='1';
							seg5<='0';
							seg3<='0';
						
						elsif (temp="00000101") then
							seg2<='0';
							seg4<='0';
							seg6<='0';
							seg8<='0';
							seg10<='0';
							seg12<='0';
							seg14<='0';
							seg16<='0';
							seg18<='0';
							seg20<='0';
							seg5<='1';
							seg3<='0';
						
						elsif (temp="00000011") then
							seg2<='0';
							seg4<='0';
							seg6<='0';
							seg8<='0';
							seg10<='0';
							seg12<='0';
							seg14<='0';
							seg16<='0';
							seg18<='0';
							seg20<='0';
							seg5<='0';
							seg3<='1';
						else
							seg2<='0';
							seg4<='0';
							seg6<='0';
							seg8<='0';
							seg10<='0';
							seg12<='0';
							seg14<='0';
							seg16<='0';
							seg18<='0';
							seg20<='0';
							seg5<='0';
							seg3<='0';
					
						end if;
						
											
						
						temp <= temp + 1;
						
					end if;
							
				
				end if;
			end if;
   end process;
 end solve;