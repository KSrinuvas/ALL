#!/usr/bin/tclsh

##--------------------------------##
##         NAMESPACE              ##
##--------------------------------##


namespace eval test {
		proc sum {a b}  {	
				set ss [expr $a+$b]
				puts $ss
		}
}

test::sum 10 20



			

namespace eval test1 {
		proc mul {a b}   {
				set mm [expr $a*$b]
				return $mm
		}
}

set res [test1::mul 2 5]

puts $res	







namespace eval hello {
		proc ok {list}	{
				puts $list;
		}
}

set ll {1 2 3 4}
hello::ok $ll
				

















