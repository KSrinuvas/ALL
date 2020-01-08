#!/usr/bin/tclsh

##-------------------------
## write+  w+
##-------------------------



set dd empty.txt;

set wp [open "$dd" w+]



puts $wp "hello\nhi\nok\ok";


puts [read $wp]


