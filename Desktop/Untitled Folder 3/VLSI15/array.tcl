#!/usr/bin/tclsh

##Example 1:
set languages(0) Tcl
set languages(1) "C Language"
for { set index 0 }  { $index < [array size languages] }  { incr index } {
   puts "languages($index) : $languages($index)"
}

##Example2:
##By default all arrays are associative arrays.
set personA(Name) "Dave"
set personA(Age) 14
foreach index [array names personA] {
   puts "personA($index): $personA($index)"
}

##Example3:
set srm(1,name) subba
set srm(1,age) 34

foreach index [array names srm] {
 puts "srm($index):$srm($index)"
}
