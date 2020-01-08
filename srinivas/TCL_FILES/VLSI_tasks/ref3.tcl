


dict set course Tcl Learning 4
dict set course Tcl Programming 3
dict set course Perl Learning 5
dict set course Perl Programming 5
dict set course Perl Advanced 3
dict set course Python Learning 4
dict set course Python Programming 3

#puts $course

if 0 {
dict for {language levels} $course {
        puts "$language courses"
        dict with levels {
                puts "--- First level $Learning"
                puts "--- Second level $Programming"
                if {[dict exists $course $language Advanced]} {
                        puts "--- Third level $Advanced"
                } else {
                        puts "--- Third level not offered"
                }
        }
}
}


dict for {lan lev} $course {
	#	puts "$lan"
		puts "$lan => [dict get $course $lan]"
}




