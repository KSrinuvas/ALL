#!/usr/bin/tclsh


##-------------------------------------------##
##++++++++++++ FIBONACCI SERIES +++++++++++++##         
##-------------------------------------------##



puts "Enter the Fibonacci series x no : ";
gets stdin a
#set a [string trimright $a \n]
#puts $a



set f 0
set s 1

for {set i 0} { $i < $a} {incr i}		{
	#	puts $i
		if {$i <= 1}	{
				set next $i
		} else {
				set next [expr $f+$s]
				set f $s
				set s $next;
		}
		puts "fibonacci series : $next"; 
}


