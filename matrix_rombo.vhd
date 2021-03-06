LIBRARY IEEE; 
USE IEEE.std_logic_1164.ALL; 
use IEEE.std_logic_arith.all; 
use IEEE.std_logic_unsigned.all; 
ENTITY matrix_rombo IS 
  PORT( 
         CLK, RESET: in STD_LOGIC; 
         salida: out STD_LOGIC_vector(15 downto 0)
           ); 
  END matrix_rombo; 
  
  
ARCHITECTURE archmatrix OF matrix_rombo IS 
signal frec_alta, frec_lenta: STD_LOGIC; 
signal COUNT: STD_LOGIC_VECTOR (23 downto 0); 
signal COUNTB: STD_LOGIC_VECTOR (3 downto 0); 
signal matrix_led: STD_LOGIC_VECTOR (15 downto 0); 
begin 
-----------------------
divisor: process (CLK, RESET) 
begin 
   if RESET='0' then 
      COUNT <= "000000000000000000000000"; 
   elsif CLK='1' and CLK'event then 
               COUNT <= COUNT + 1; 
         else 
               COUNT <= COUNT; 
   end if; 
       frec_alta <= COUNT(15); 
       frec_lenta <= COUNT(23); 
end process divisor; 

-------------------------------------

contabin: process (frec_alta, RESET) 
begin 
   if (RESET='0' or COUNTB= 8) then 
      COUNTB <= "0000"; 
	     elsif frec_alta='1' and frec_alta'event then 
               COUNTB <= COUNTB + 1; 
         else  COUNTB <= COUNTB; 
   end if; 
end process contabin; 

---------------------------------------


decomatrix: process (COUNTB) 
begin 
--  CONTB(2:0) -> c1|c2|c3|c4|c5|f1|f2|f3|f4|f5|f6|f7 
case COUNTB is 
when "0000" => matrix_led <="0111111100000000"; --c1 
when "0001" => matrix_led <="1011111100011000"; --c2 
when "0010" => matrix_led <="1101111100111100"; --c3  
when "0011" => matrix_led <="1110111101111110"; --c4 
when "0100" => matrix_led <="1111011100111100"; --c5 
when "0101" => matrix_led <="1111101100011000"; --c6 
when "0110" => matrix_led <="1111110100000000"; --c7
when "0111" => matrix_led <="1111111000000000"; --c8  
when others => matrix_led <="1111111100000000"; --apagado 
end case; 
end process decomatrix; 

---------------------------------------------
salida_individual: process (matrix_led) 
begin 

salida <= matrix_led; 

end process salida_individual; 

-------------------------------------------------------
END archmatrix; 