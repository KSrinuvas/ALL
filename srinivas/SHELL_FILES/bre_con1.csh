#!/bin/csh


	
@ aa = 1 

while ($aa < 10) 
	#	echo $aa
		if ($aa == 1 || $aa == 5 || $aa == 9)	then
		#	echo $aa
		endif
		@ aa = $aa + 1
end
	



## break

@ bb = 1

while ($bb <= 5)
		if ($bb == 1 || $bb == 3 || $bb == 5) then	
			 @ bb = $bb + 1
			 continue
		endif
		echo $bb
		@ bb = $bb + 1
end
