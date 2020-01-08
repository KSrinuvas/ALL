#!/bin/csh

set list = (1 2 3 4 5 6 7 8 9)



## break 


foreach n1 ($list)
		if ($n1 == 5) then
				break;
		endif
#		echo $n1
end



## continue

foreach n2 ($list) 
		if ($n2 == 1 || $n2 == 3 || $n2 == 5) then
				continue
		endif
		echo $n2
end


 
