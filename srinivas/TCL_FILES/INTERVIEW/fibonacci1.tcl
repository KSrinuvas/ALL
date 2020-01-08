#!/usr/bin/tclsh

##----------------------------------------------------------##
##++++++++++---------  fibonacci series --------++++++++++++##
##----------------------------------------------------------##

## 

puts "ENter the fibonacci series of x no : ";

set no [gets stdin]
#puts $no 


set i 0
set f 0
set s 1

while {$i < $no} {
	#	puts $i
		if {$i <= 1} {
				set next $i
		} else {
				set next [expr $f+$s]
				set f $s
				set s $next
		}
		puts "fibonacci series : $next";
		incr i
}


