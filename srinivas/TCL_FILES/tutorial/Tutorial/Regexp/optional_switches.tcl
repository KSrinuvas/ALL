#!/usr/bin/tclsh

##----------------------------
## optional switches
##----------------------------

if  0 {

Switches for Regex Command
The list of switches available in Tcl are,

nocase − Used to ignore case.

indices − Store location of matched sub patterns instead of matched characters.

line − New line sensitive matching. Ignores the characters after newline.

start index − Sets the offset of start of search pattern.

Marks the end of switches

}


## nocase 

set str "HELLO"
regexp -nocase {[a-z]*} $str a 
puts $a


## line






