#!/usr/bin/tclsh

## while loop

set i 0

while {$i < 10} {
	#	puts $i;
		incr i;
		if {$i == 5}	{
				break;
		}	
}




set i 0

while {$i < 10}	{
		if {$i == 5}	{
			 ##skip the iteration
		   incr i
			 continue
		}
		puts $i;
		incr i
}
