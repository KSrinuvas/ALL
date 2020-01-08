#!/usr/bin/tclsh

##------------------------------------##
## CONVERT THE STRING INTO THE LIST   ##
##------------------------------------##

set str "hello hi good";

set list [split $str " "]

foreach aa $list {
		puts $aa
}

