#!/bin/csh

##-----------------------------
## LOOP CONTROL
##-----------------------------

while ( 1 )	
		echo -n "Enter the directory to list : "
		set dirname = $<
		if ( -d $dirname ) break
		echo "$dirname is not directory"
end

ls $dirname

