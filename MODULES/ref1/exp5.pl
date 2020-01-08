#!/usr/bin/perl -w
use strict;



my $a = 100;

if (1) {
			my $a = 10;
			bb($a);
}



sub bb {
		my $dd = shift;
		print"$dd\n";
}


