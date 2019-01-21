library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decodificador_teclas is

port (
     a : in std_logic;
	  b : in std_logic;
	  c : in std_logic;
	  d : in std_logic;
	  e : in std_logic;
	  f : in std_logic;
	  g : in std_logic;
	  h : in std_logic;
	  i : in std_logic;
	  j : in std_logic;
	  k : in std_logic;
	  l : in std_logic;
	  m : in std_logic;
	  n : in std_logic;
	  o : in std_logic;
	  p : in std_logic;
	  q : in std_logic;
	  r : in std_logic;
	  s : in std_logic;
	  t : in std_logic;
	  salida : out std_logic_vector(4 downto 0)
     );
end decodificador_teclas;

architecture sol of decodificador_teclas is

begin
 
salida <= "00000" when (a='1') ELSE
			 "00001" when (b='1') ELSE
			"00010" when (c='1') ELSE
			 "00011" when (d='1') ELSE
			"00100" when (e='1') ELSE
			"00101" when (f='1') ELSE
			 "00110" when (g='1') ELSE
			"00111" when (h='1') ELSE
			 "01000" when (i='1') ELSE
			 "01001" when (j='1') ELSE
			"01010" when (k='1') ELSE
			"01011" when (l='1') ELSE
			"01100" when (m='1') ELSE
			 "01101" when (n='1') ELSE
			"01110" when (o='1') ELSE
			"01111" when (p='1') ELSE
			"10000" when (q='1') ELSE
			"10001" when (r='1') ELSE
			"10010" when (s='1') ELSE
			"10011" when (t='1') ELSE
			"00001";
end sol;