#!/usr/bin/perl -w
use strict;

##-----------------------------------------##
##-- 
##-----------------------------------------##



my $a = system("ls -l");

#print"$a\n";


my @array = qx{ls -l};

foreach (@array) {
		print"$_\n";
}




