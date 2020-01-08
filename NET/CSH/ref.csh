#!/bin/csh



set file = $1

if ($#argv == 0)	then
	echo "file name : $0"
	exit
endif



echo "hello"


if (! -f $file) then
	echo "$file is not a file"
	exit
endif



echo "hello"
 

set v=`cat aa`
set i=1



echo $v

while ( $i < = $#v )
   # echo $v[$i]
    @ i = $i + 1
end



foreach line (`cat aa`) 
	echo $line
end 




