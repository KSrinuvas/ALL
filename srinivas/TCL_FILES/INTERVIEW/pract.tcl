#!/usr/bin/tclsh 

set list [list 1 2 3]

puts $list

lappend list 10 20 30

linsert $list 0 "hello"

puts [lindex $list 0]

puts $list

puts [llength $list]

puts [lrange $list 0 4]



