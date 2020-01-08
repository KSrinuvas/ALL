#!/bin/csh

if ( $#argv == 0) then
		echo -n "Enter time in minutes : "
		@ min = $<
else 
		@ min = $1
endif

@ sec = $min * 60

echo "$min minutes is $sec seconds"

