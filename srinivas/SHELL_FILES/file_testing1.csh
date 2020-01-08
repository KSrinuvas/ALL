#!/bin/csh

##-------------------------
## File testing
##-------------------------


if ( -e $1 ) then
			echo "$1 is existance"
			if ( -f $1 ) then
					echo "$1 is ordinary file"
			else 
					echo "$1 is not a ordinary file"
			endif
else 
			echo "$1 is not existance"
endif




if ( -d $2) then
		echo "$2 is dir"
else 
		echo "$2 is not a dir"
endif

