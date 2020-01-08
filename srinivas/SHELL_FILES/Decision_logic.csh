#!/bin/csh

##----------------------------------------
## Decision logic
##----------------------------------------

# if (expression) command

##     if (expression) then
##		   		command(s)
##     endif


# if-then-else statement

#				if (exp ) then
#						comm
#				else 
#						comm
#				endif


#------------------------------------------

set a = 10;

if ($a == 10) then 
		echo "the a value is eq 10"
endif



set na = 100 

if ($na == 10) then 
		echo "num is 10"
else 
		echo "not a num"
endif



set bb = 15

if ($bb == 16) then
		echo "no is 16"
else if ($bb == 20) then 
		echo "no is 20"
else if ($bb == 15) then 
		echo "no is 15"
else 
		echo "not a nun"
endif



## string cmpare 

set str = "hello"

if ($str != "hello") then
		echo "match $str"
else 
		echo "not match $str"
endif





