#!/usr/bin/tclsh

##------------------------------------------------------
## read and write a file, if file is must exist already
##------------------------------------------------------


###  r+

set aa "ab.txt";
set rp [open "$aa" r+]

puts [read $rp]


puts $rp okkk




close $rp
