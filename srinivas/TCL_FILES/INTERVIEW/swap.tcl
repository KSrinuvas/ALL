#!/usr/bin/tclsh

##----------------------------------------------------##
## swap two numbers without using temporary varible
##----------------------------------------------------##


#Logic is:
 #  a=a+b;
 #  b=a-b;
 #  a=a-b;


set a 50
set b 13

set a [expr $a+$b]
set b [expr $a-$b]

puts "b is $b"

set a [expr $a-$b]
puts "a is $a"
