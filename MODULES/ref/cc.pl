#!/usr/bin/perl -w
use strict;



END {
		print "Succcessfully completed\n";
}






require Name;

Name::hello("srinu","vas");



BEGIN {
		print "unshift the \@INC add to the path\n";
		unshift(@INC,'/home/srm/srinivas/PL_FILES');
}

