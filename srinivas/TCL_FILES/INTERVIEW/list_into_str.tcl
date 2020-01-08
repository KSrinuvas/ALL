#!/usr/bin/tclsh

##---------------------------------------##
## CONVERT THE LIST INTO STRING 			   ##
##---------------------------------------##

set list {hello hi good}


set str [join $list _ ];

puts $str

