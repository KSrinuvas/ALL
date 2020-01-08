#!/usr/bin/tclsh

set a 10
set b 20

set res 0


for {set i 1} {$i <= $b} {incr i}	{
		set res [expr $a + $res]
}

puts "multiplication of $a and $b is : $res";
