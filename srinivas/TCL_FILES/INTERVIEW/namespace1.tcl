#!/usr/bin/tclsh
##--------------------------------##
## 	namespace 										##
##--------------------------------##


namespace eval TEST {
		proc ADD {a b} {
				set sum [expr $a+$b]
				puts $sum
		}
}

TEST::ADD 10 20
TEST::ADD 1 2



namespace eval TEST1 {
		proc AA {x y} {
					set mul [expr $x+$y]
					return $mul
		}
}

set res [TEST1::AA 500 100]

puts $res
