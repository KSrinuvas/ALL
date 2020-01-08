#!/bin/csh

##---------------------------
## foreach loop
##---------------------------

foreach pp (1 2 3) 
		echo $pp
end



@ sum = 0

foreach file (`ls`)
		set size = `cat $file | wc -c`
		set line = `cat $file | wc -l`
		echo "Counting : $file (lines is $line)  (size is $size)"
		@ sum = $sum + $size
end

echo "sum : $sum"


