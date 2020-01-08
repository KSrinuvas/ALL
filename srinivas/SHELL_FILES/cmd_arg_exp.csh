#!/bin/csh

##--------------------------
## Expression examples
##--------------------------



if ($1 == "hello")	then
		echo "yes $1"
else 
		echo "no $1"
endif


set len = $#argv

echo $len

if ($len == 5) then
		echo "length is 5"
else 
		echo "length is not 5"
endif


