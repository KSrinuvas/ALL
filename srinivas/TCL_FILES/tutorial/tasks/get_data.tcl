#!/usr/bin/tclsh

set a [exec ls]


set b [exec pwd]

#puts $b



set bb [glob /home/srm/*]


proc pp {path} {
		#puts $path
		foreach pa $path {
				#puts $pa
				if { [file isdirectory $pa] } {
						puts $pa
				} elseif { [file isfile $pa] } {
				#		puts $pa
				}
		}
}

pp $bb




proc sum {a b}	{
		puts [expr $a+$b]
}
set g 10
set e 20

sum $g $e
