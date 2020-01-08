#!/usr/bin/tclsh

## decision control statements 

set a 10

if {$a == 10} { 
		puts "\$a value is 10"
}

set b 20

if {$b <= $a}	{
		puts "$b value is lessthen equal to $a"
} else {
		puts "$b value is not lessthen equal to $a"
}

		

## if , elseif , else 

if {$a == 10}	{
		puts "\$a value eq to 10";
} elseif {$b == 20} {
		puts "\$b value eq to 20";
} else {
		puts "\$a and \$b are not true"
}




## nested if statement 


if {$a == 10} {
		if {$b == 20} {
				puts "a and b are eq values"
		}
}

