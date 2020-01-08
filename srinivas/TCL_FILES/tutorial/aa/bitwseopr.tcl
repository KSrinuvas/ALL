#!/usr/bin/tclsh

## bitwise operators 

## !  , ~ , &, ^



set a 60
set b 13

	
set c [expr $a & $b]

puts "and operations of $a and $b is : $c"

set r [expr $a | $b] 
	

puts "or operation of $a and $b is : $r"


set nr [expr $a ^ $b]

puts "nor operation of $a and $b is : $nr"




## left shift operator <<  and right shift operator >> 	




set lo [expr $a << 2]

puts "left shift operator of $a is : $lo"

set ro [expr $a >> 2] 

puts "right shift operator of $a is : $ro"






set fp [open "input.txt" w+]
puts $fp "test\ntest"
close $fp
set fp [open "input.txt" r]

while { [gets $fp data] >= 0 } {
   puts $data
}
close $fp
