#!/usr/bin/tclsh


##------------------------------------------------------------------------
##.how to increment eacl element in a list? eg: incrlist {1 2 3} =>2 3 4
##------------------------------------------------------------------------



proc in {list} {
		set s 0
		set ll {};
		foreach s $list {
				incr s 1
				puts $s
				lappend ll $s
		}
		return $ll
}


set li {1 2 3}
set ret [in $li]

puts $ret 
