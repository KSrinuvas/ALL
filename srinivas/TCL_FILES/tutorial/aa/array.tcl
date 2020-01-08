#!/usr/bin/tclsh

## array 

set languages(0) Tcl
set languages(1) Perl
set languages(2) Python
set languages(3) Shell

foreach name [array names languages] {
		puts "$name   $languages($name)"
}


puts $languages(0)


puts [array size languages]

