#!/usr/bin/tclsh


##

set str "first second threed"


regexp {([A-Z,a-z]*)\s+([A-Z,a-z]*)\s+([A-Z,a-z]*)} $str full f1 f2 f3

puts $full

puts "first : $f1"
puts "second : $f2"
puts "threed : $f3"


