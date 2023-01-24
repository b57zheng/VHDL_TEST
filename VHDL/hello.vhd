LIBRARY ieee ;
USE ieee.std logic 1164.all ;
ENTITY func1 IS
    PORT ( x1, x2, x3 : IN STD LOGIC ;
           f : OUT STD LOGIC ) ;
END func1 ;

ARCHITECTURE LogicFunc OF func1 IS
BEGIN
    f <= (NOT x1 AND NOT x2 AND NOT x3) OR 
         (NOT x1 AND x2 AND NOT x3) OR
         (x1 AND NOT x2 AND NOT x3) OR
         (x1 AND NOT x2 AND x3) OR
         (x1 AND x2 AND NOT x3) ;
END LogicFunc ;