#!/usr/bin/tclsh 

##--------------------------------------
## string 
##-------------------------------------

## create a string 

set str1 "hello"

## to print a string 

#puts $str1

set str2 "hello"


## compare two strings s1 and s2 

if {[string compare str1 str2] == -1} {
   puts "String \'$str1\' and \'$str2\' are same."; 
}


puts [string compare str1 str2] 
