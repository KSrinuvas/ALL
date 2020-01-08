#!/usr/bin/tclsh

set a 10
set b 20


##  Arthmetic operators 

## add  => + , sub => - , div => / , mul => * , modulus => %

set add [expr $a +$b];

puts "sum of $a and $b is : $add";

set mul [expr $a * $b]
puts "mul of $a and $b is : $mul"

set sub [expr $b -$a] 

puts "sub of $b and $a is : $sub";

set div [expr $a/$b]

puts "div of $a and $b is : $div";


