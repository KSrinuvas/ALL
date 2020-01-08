#!/usr/bin/perl -w
use strict;




if (1) {
		our $a = 50;
		local $b = 20;
		my $b = 100;
		print "$b\n";
		&hh($b);
}




sub hh {
		my $re = shift;
		print "100 == $re\n";
		print"$b\n";
}

