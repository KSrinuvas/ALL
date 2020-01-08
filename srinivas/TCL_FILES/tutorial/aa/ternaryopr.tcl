#!/usr/bin/tclsh

## ternary operator it will perform the both if and else condtions

set a 10

set res [expr $a==10?true:false]

puts $res;


set str "hello"

set r1 [expr [string compare $a hello] == 0? true:false]



set file [open "file.txt" r]

while {[gets $file line] >= 0}	{
		puts "$line"
}




