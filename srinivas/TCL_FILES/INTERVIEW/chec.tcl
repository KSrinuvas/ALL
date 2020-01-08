#!/usr/bin/tclsh

gets stdin a
set len [ string length $a ]
set n [ expr $len/2 ]

for { set i 0 } { $i < $n } {incr i} {
set b [ string index $a $i ]
set c [ expr $len - 1 - $i ]
set d [ string index $a $c ]

if {$b != $d} {
puts “not a palindrome”
exit

}

}
puts “Palindrome”





