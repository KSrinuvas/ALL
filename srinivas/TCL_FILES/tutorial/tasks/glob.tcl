#!/usr/bin/tclsh

## find all the tcl files in the current directory

## glob *.tcl

set cc [glob *.tcl]

puts $cc


set ho [glob -directory ~ *.tcl]

puts $ho


set cd [glob -directory /home/srm/srinivas/TCL_FILES/tutorial *.tcl]

foreach ff $cd {
		puts $ff
}

