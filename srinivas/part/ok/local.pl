#!/usr/bin/perl -w
use strict;


sub hello {
		local $a = 20;
		my $a = 11;
		pp($a);
}


sub pp {
		print"$_[0]\n";
}

hello;

