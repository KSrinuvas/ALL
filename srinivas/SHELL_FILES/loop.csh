#!/bin/csh

## looping constrants 

#repeat no cmd

: <<END

gsdgs
sg

multiline commenting in csh


s
sg
sg

END

echo "hello"




foreach name (a b c d)	
		echo $name
end





@ a = 0

while ($a < 10) 
		echo $a
		@ a = $a + 1
end




set list = (1 2 3 4 5 6)



foreach aa ($list)	
		echo $aa
end






## loop whit sum

@ sum = 0
foreach file (`ls`)	
		set size = `cat $file | wc -c`
		echo "counting : $file ($size)"
		@ sum = $sum + $size 
end

echo sum:$sum

