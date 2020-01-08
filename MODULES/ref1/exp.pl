#!/usr/bin/perl -w
use strict;

use Config;

foreach (keys (%Config)) {
#		print"$_\n";
}





my $a = 100;

foreach my $aa (1..10) { 
			my $b = 55;
			local $a = 20;
			call_fun($a);
}


sub call_fun {
		my $k = shift;
		print"$k\n";
}

