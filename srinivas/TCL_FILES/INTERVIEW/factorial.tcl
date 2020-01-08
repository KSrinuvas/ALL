#!/usr/bin/tclsh 

##-----------------------------##
##    factorial no of x        ##
##-----------------------------##

puts "Enter the factorial no of x : ";

set no [gets stdin]

set i 1
set fact 1

while {$i <= $no} {
		set fact [expr $fact*$i]
		incr i;
}

puts "Factorial of $no is : $fact"

