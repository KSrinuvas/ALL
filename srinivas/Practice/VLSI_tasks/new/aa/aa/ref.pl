#!/usr/bin/perl -w
use strict;


my $a = 10;
my $b = 20;

my $k = aa(10,20);

print"return value : $k\n";

sub aa {
		my $c = shift;	
		my $d = shift;
		print"$c\n";
		return $c;
	#	print"$c\n";
}

