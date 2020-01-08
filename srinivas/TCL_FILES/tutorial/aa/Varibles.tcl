#!/usr/bin/tclsh

## varible nameing

set varibleA 10

set {varible B} 20

puts $varibleA;

puts ${varible B};


## Dynamic typing 



set varibleA 11
puts $varibleA;

set sum [expr $varibleA+20];
puts $sum


## mathematical Expressions

set a 10
set b 20

set ss [expr $a+$b]

puts "sum of $a and $b is : $ss";

set mul [expr $a*$b]

puts "mul of $a and $b is : $mul";

set sub [expr $b-$a]

puts "sub of $b and $a is : $sub";

set div [expr $a/5.0]

puts $div;


puts [expr 10%7]

