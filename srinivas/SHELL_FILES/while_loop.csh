#!/bin/csh

##-------------------------------------
## WHILE LOOP
##-------------------------------------



echo "Increment : "


@ i = 0

while ( $i < 6 ) 
		echo "                 $i"
		@ i = $i + 1;
end



echo "Decrement  : "
	

@ j = 15 

while ( $j > 10 ) 
		echo "                 $j"
		@ j = $j - 1
end





