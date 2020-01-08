#!/usr/bin/tclsh


##---------------------------------------------------------------------
## How increment a charater? For example, i give a and i should get b.
##---------------------------------------------------------------------


set char a

puts $char


set incr_char [format %c [expr {[scan $char %c]+1}]]

puts $incr_char;
