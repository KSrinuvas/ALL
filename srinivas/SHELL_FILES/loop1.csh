#!/bin/csh



@ sum = 0
@ to_w = 0
@ to_l = 0
foreach file (`ls`)
		if (-f $file) then 
				set size = `cat $file | wc -c`
				set line = `cat $file | wc -l`
				set word = `cat $file | wc -w`
				echo "$file ($size) ($line) ($word)"
				@ sum = $sum + $size
				@ to_w = $to_w + $word
				@ to_l = $to_l + $line
		endif
end

echo "sum of total charaters in a currnet dir : $sum"
echo "total no of lines in a dir : $to_l"
echo "total no of words in a dir : $to_w"

