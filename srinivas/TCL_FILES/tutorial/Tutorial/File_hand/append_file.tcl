#!/usr/bin/tclsh

##----------------------------
## append file data 'ab.txt' 
##----------------------------

set aa ab.txt
set fap [open "$aa" a+]

puts $fap "Source\nInternet";


close $fap; ## close file handler
 
