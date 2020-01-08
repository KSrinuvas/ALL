#!/usr/bin/tclsh
##Exmaple1
set var {orange blue red green}
puts [llength $var] 

##Exmaple2
set var {orange blue red green}
puts [lindex $var  1]
##
foreach index $var {
 puts $index
}

##Example3
set var {orange blue red green}
set var [linsert  $var 3 black white]
puts $var
 
##Example4:
set var {orange blue red green}
set var [lreplace $var 2 3 black white]
puts $var

##Example
set var {orange blue red green}
lset var 0 black 
puts $var

##Exmaple5:
set var {orange blue red green}
set var [lsort $var]
puts $var

