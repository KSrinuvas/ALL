#!/usr/bin/tclsh


###---------------------------------------------###
###--  Write a regexp to match an ip address  --###
###---------------------------------------------###


set ip 162.14.32.1

puts $ip

regexp -all {[0-9]+.[0-9]+.[0-9]+.[0-9]} $ip match 

puts $match


