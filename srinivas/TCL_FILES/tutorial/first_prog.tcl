#!/usr/bin/tclsh 

##-----------------------
## firsrt tcl program
##-----------------------

puts "hello World";


## comment in a single line using #

## comment in multiple lines if 0 { multiple lines }


if 0 {
hello world
puts "good"
puts "ok"
puts " file name is : $argv0"
}

puts "file name is : $argv0"


## inline comments u can use ;#

set a 10

puts "a value is $a"; # the value is print




##  after 
#This defines a command to make Tcl do nothing at all for N seconds:


proc sleep {nn} {
		after [expr {$nn * 1000}]
}

sleep 5;

puts "after 5 sceonds print";

puts "ok\n";




after [expr {5 * 1000}]

puts "again after 5 sec";

puts "okk";

## append exp

set var count; 
for {set i 1} {$i<=10} {incr i} {
   append var "," $i
}
puts $var



set list [list 1];

set p 2;
while {$p <= 6} {
		lappend list $p;
		incr p;
}


foreach aa $list {
		puts $aa
}




set abc {1 2 3 4 5}

puts $abc;



#unset $abc;

puts $abc;









