library ieee;
use ieee.std_logic_1164.all;

Entity OR_20 is
	Port(	      
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
	  salida: out std_logic);
end OR_20;

Architecture SOLUTION of OR_20 is

Begin
	salida<= a or b or c or d or e or f or g or h or i or j or k or l or m or n or o or p or q or r or s or t;
end SOLUTION;