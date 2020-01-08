#!/usr/bin/tclsh

## logic operators

## &&, || , !  these are the logic operators 


## examples 

set a 0
set b 20
	

if {$a && $b} {
		puts "line1 cond is true"
} else { 
		puts "line2 cond is true"
}

if {$a || $b} {
		puts "line1 cond is true"
} else { 
		puts "line2 cobd is true"
}

