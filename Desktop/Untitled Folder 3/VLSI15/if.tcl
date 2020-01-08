#!/usr/bin/tclsh

set a 100

#check the boolean condition
if { $a == 10 } {
   # if condition is true then print the following 
   puts "Value of a is 10"
} elseif { $a == 20 } {
   # if else if condition is true 
   puts "Value of a is 20"
} elseif { $a == 30 } {
   # if else if condition is true 
   puts "Value of a is 30"
} else {
   # if none of the conditions is true 
   puts "None of the values is matching"
}

puts "Exact value of a is: $a"
