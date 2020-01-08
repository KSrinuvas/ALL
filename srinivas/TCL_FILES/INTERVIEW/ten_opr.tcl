#!/usr/bin/tclsh

###----------------------------------------###
##---    :? Command Usage               ---###
###----------------------------------------###



set a 10
set b 20

set res [expr $a >= $b ? "true" : "false"]

puts $res
