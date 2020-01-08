#!/bin/csh

##------------------------------------
## BASIC OPERATORS 
##------------------------------------

## expressions

#                 meaning               

#  ()             grouping
#  !              Logical "not"
#  > >= < <=      greater then,less then
#  ==  !=         equal to , not eaual to
#	 ||             logical "or"
#  &&             logical "and"

##-------------------------------------



set a = 10
set b = 20

## and operation

if ($a == 10 && $b == 20) then
		echo "and"
else 
		echo "the above contion is false"
endif


## or operation

if ($a == 10 || $b == 30) then
		echo "or"
else 
		echo "the above condtion is false"
endif 


## > , < , <= , >=


if ($a < $b) then
		echo "a is lt b"
else if ($a != $b) then
		echo "a ne b"
else 
		echo "ok"
endif




