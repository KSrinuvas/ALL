#!/usr/bin/tclsh


set a “ccccccccaaabbbbaaaabbinformationabcaaaaaabbbbbbbccbb” 

set output [string trimright [string trimleft $a “abc”] “abc”] 

puts $output
