#!/usr/bin/perl
use strict;
use warnings;


sub aa {
	my $kk = 1000;
	local $a = 10;
	my $p = 100;
	bb($kk,$p);
}


sub bb {
	my $d = shift;
	my $k = shift;
	print "$d\n";
	print "$k\n";
	print "$a\n";
}

aa();


