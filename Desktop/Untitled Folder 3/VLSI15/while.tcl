#!/usr/bin/tclsh
set a 10
# while loop execution 
while {$a < 20 } {
   puts "value of a: $a"
   incr a
   if { $a > 15} {
      # terminate the loop using break statement 
      break
   }
}

