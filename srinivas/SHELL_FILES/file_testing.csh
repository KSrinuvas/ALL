#!/bin/csh

##------------------------
## file testing operators 
##------------------------

if ( -e $1) then 
		echo "$0 file is existance"
		if ( -f $1) then
				echo "$0 is ordinary file"
		endif	
endif


