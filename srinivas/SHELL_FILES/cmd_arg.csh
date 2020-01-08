#!/bin/csh

##---------------------------------------------------------------
## CMD line Arguments 
##----------------------------------------------------------------

#Use arguments to modify script behavior

#command line arguments become 
#positional parameters to C shell script

#positional parameters are numbered variables:     $1, $2, $3 … 



# 			     Meaning

#  $0		      name of the script
#  $1, $2	  	first and second parameter
#  ${10}		  10th parameter
#	  			    { } prevents “$1” misunderstanding
#  $*		      all positional parameters
#  $#argv	    the number of arguments

##------------------------------------------------------------------

echo "name : $1"
echo "age : $2" 

echo "thread arguments : ${3}"

echo "FIle name is : $0"

echo "all postional arguments  : $* "



echo "count the total no of cmd arguments : $#argv"
