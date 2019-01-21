library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux20a1_15bits is

port (
      a : in std_logic_vector(15 downto 0);
	  b : in std_logic_vector(15 downto 0);
	  c : in std_logic_vector(15 downto 0);
	  d : in std_logic_vector(15 downto 0);
	  e : in std_logic_vector(15 downto 0);
	  f : in std_logic_vector(15 downto 0);
	  g : in std_logic_vector(15 downto 0);
	  h : in std_logic_vector(15 downto 0);
	  i : in std_logic_vector(15 downto 0);
	  j : in std_logic_vector(15 downto 0);
	  k : in std_logic_vector(15 downto 0);
	  l : in std_logic_vector(15 downto 0);
	  m : in std_logic_vector(15 downto 0);
	  n : in std_logic_vector(15 downto 0);
	  o : in std_logic_vector(15 downto 0);
	  p : in std_logic_vector(15 downto 0);
	  q : in std_logic_vector(15 downto 0);
	  r : in std_logic_vector(15 downto 0);
	  s : in std_logic_vector(15 downto 0);
	  t : in std_logic_vector(15 downto 0);
     seleccion : in std_logic_vector(4 downto 0);
     salida : out std_logic_vector(15 downto 0)
     );
end mux20a1_15bits;

architecture sol of mux20a1_15bits is
begin

process(a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,seleccion)
begin
case seleccion is
  when "00000" => salida <= a;
  when "00001" => salida <= b;
  when "00010" => salida <= c;
  when "00011" => salida <= d;
  when "00100" => salida <= e;
  when "00101" => salida <= f;
  when "00110" => salida <= g;
  when "00111" => salida <= h;
  when "01000" => salida <= i;
  when "01001" => salida <= j;
  when "01010" => salida <= k;
  when "01011" => salida <= l;
  when "01100" => salida <= m;
  when "01101" => salida <= n;
  when "01110" => salida <= o;
  when "01111" => salida <= p;
  when "10000" => salida <= q;
  when "10001" => salida <= r;
  when "10010" => salida <= s;
  when "10011" => salida <= t;
  when others => salida <= "0000000000000000"; 
end case; 
end process;
end sol;