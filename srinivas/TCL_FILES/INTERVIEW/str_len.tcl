#!/usr/bin/tclsh

##-----------------------------------------------
##  How do you find the length of a string, 
##  without using string length command in TCL?
##-----------------------------------------------


set str "hello ihdg ss";

puts $str


set list [split $str ""];

set ll 0
foreach pp $list {
		incr ll;
}

puts $ll 
