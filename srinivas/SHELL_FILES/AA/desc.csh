#!/bin/csh

set a = 10

if ($a == 10) then
	echo "yes"
endif


## if then else 

if ($a == 20) then
	echo "yes"
else 
	echo "no"
endif



## if then else statements 

if ($a == 20) then 
		echo "if true"
else if ($a == 10) then
		echo "elseif true"
else 
		echo "else true"
endif 

