library ieee;
use ieee.std_logic_1164.all;

Entity OR_10 is
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
	  salida: out std_logic);
end OR_10;

Architecture SOLUTION of OR_10 is

Begin
	salida<= a or b or c or d or e or f or g or h or i or j;
end SOLUTION;