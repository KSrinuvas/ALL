#!/usr/bin/tclsh

##---------------------------
## Read a file 
##---------------------------

set aa file.txt;

set file [open "$aa" r]

set rr [read $file]

set rr [string trimright $rr \n];

puts $rr

close $file

