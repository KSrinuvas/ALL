#!/usr/bin/perl
use strict;
use warnings;

my $dd = 100;
sub bb {
	my $c = 30;
	local $b = 20;
	my $q = 120;
	aa($q);
}

sub aa {
	my $q = shift;
	print "$b\n";
	print "$q\n";
}

bb();
