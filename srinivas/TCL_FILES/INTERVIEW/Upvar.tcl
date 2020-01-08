#!/usr/bin/tclsh

###-----------------------------------------------###
###    Easiest Example To Explain Upvar Command   ###
###-----------------------------------------------###

proc example {one two} {
		upvar $one local1
		upvar $two local2

		set local1 Kavitha
		set local2 Anbarasu
}

set glob1 David
set glob2 Beckam

puts $glob1
puts $glob2\n

example 10 glob2
puts $glob1
puts $glob2

