#!/bin/csh

##-----------------------------
## while loop
##-----------------------------



echo -n "Enter directory to list : "

set dirname = $<

while ( ! -d $dirname )
		echo "$dirname is not directorry"
		echo -n "Enter the direcory to list : "
		set dirname = $<
end

ls $dirname
