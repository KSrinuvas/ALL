#!/usr/bin/tclsh

##----------------------------------------
## Special Varibles 
##----------------------------------------

## argc -> Refers to a no of command-line arguments.

## argv -> refers to the list contaning the command-line arguments.

## argv0 -> Refers to the file name

## env  -> used to representing the array of elements that are environmental varibles.

## errorCode -> Provides the error code for last tcl error.

## errorInfo -> Provides the stack trace for last Tcl error.




##


puts $tcl_version

puts "$env(PATH)\n"


puts $tcl_pkgPath;   ##  tcl package path

puts $tcl_library;   ## tcl library 

   
puts $tcl_patchLevel;  ## tcl Patch Level


puts $tcl_precision;
 
puts $tcl_rcFileName;

puts $argc;





##






