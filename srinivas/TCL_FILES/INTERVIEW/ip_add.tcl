#!/usr/bin/tclsh 

##------------------------------------------------------------------
##  How to Swap 30 & 40 in IP address 192.30.40.1 using TCL script?
##------------------------------------------------------------------

set ip 192.30.40.1;

puts $ip

## method 1 :- using string operstors 

set aa [string range $ip 3 4]
set bb [string range $ip 6 7]

set up1 [string replace $ip 3 4 $bb]

set new_ip [string replace $up1 6 7 $aa]

puts $new_ip 





## method 2 : - using split and join 

set list [split $ip .]

#puts $list;

set a1 [lindex $list 0]
set a2 [lindex $list 1]
set a3 [lindex $list 2]
set a4 [lindex $list 3]

set new_ip1 [join "$a1 $a3 $a2 $a4" .]

puts $new_ip1




## method 3 : - using reg expersions 


regexp {([0-9]+.)([0-9]+.)([0-9]+.)([0-9]+)} $ip match m1 m2 m3 m4


##

#regexp {([0-9]+.)([0-9]+.)([0-9]+.)([0-9]+)} $ip match m1 m2 m3 m4 


append new_ip2 $m1 $m3 $m2 $m4


puts $new_ip2
