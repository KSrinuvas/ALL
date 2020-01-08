#!/usr/bin/tclsh

##-------------------------------
## Error handling to read a file 
##-------------------------------

catch {set file [open 'hello.txt'] } result

puts $result
puts $errorCode
puts $errorInfo
