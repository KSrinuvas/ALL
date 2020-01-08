#!/bin/csh

##-----------------------------
## Reading file contents
##-----------------------------

## lookup nameOrNumber

set list = "aa.txt"


if ( $#argv == 0 ) then 
		echo -n "Enter name OR Z-id : "
		set name = $<;
else 
		set name = $*
endif

grep -i "$name" $list

if ( $status ) echo " $name not found"

