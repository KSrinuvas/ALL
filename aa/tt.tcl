#!/usr/bin/tclsh

set dic [dict create hello 1 hi 2 ok 3]

puts $dic



dict for {id info} $dic {
		puts "$id => $info"
}



foreach key [dict keys $dic] {
		puts "$key"
}


foreach val [dict values $dic] {
		puts "$val"
}

