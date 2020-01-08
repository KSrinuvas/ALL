#!/usr/bin/tclsh

proc a1 {a2} {
  upvar $a2 x
  foreach index [array names x] {
  puts "x($index) = $x($index)"
  }
}

array set a {0 0 10 1 20 2 30 4}
a1 a

