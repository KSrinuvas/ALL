#!/usr/bin/tclsh


### loop control statement in tcl

## break -> to exit from the loop

## continue -> to go from the next iteration

## write a simpel program in break and continue 


set a 1


## break the values at 5
while {$a < 10} {
		#	puts "$a"
			incr a;
			if {$a == 5}	{
					break;
			}
}

	


## continue after 5

## using for loop

for {set i 1} {$i <= 10} {incr i}	{
		if {$i == 5}	{
				continue;
		}
	#puts "$i";
}
	

## using while loop do continue 


set b 1

while {$b <= 10}	{
		if {$b == 5 || $b == 6 || $b == 7 || $b == 10 || $b == 9 || $b == 8}	{
				incr b
				continue
		}
		puts "$b"
		incr b
}





