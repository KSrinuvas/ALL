#!/usr/bin/tclsh

##Create dictionary and retreive the balues in a more dynamic way.
set colours [dict create colour1 "black" colour2 "white"]
foreach item [dict keys $colours] {
  set value [dict get $colours $item]
  puts $value
}

##
set colours [dict create colour1 "black" colour2 "white"]
set value [dict get $colours colour1]
puts $value

##Check for values
set colours [dict create colour1 "black" colour2 "white"]
set values [dict values $colours]
puts $values

##Check for keys
set colours [dict create colour1 "black" colour2 "white"]
set keys [dict keys $colours]
puts $keys

## check for key existence.
set colours [dict create colour1 "black" colour2 "white"]
set result [dict exists $colours colour1]
puts $result
