#!/usr/bin/perl
use strict;
use warnings;

my $un = qx{ifconfig >ab.txt};

print"$un\n";

open(IN,"ab.txt") || die "Not able to open file $!\n";

my @lines = <IN>;

foreach (@lines)	{
			chomp($_);
	#		print"$_\n";
			if ($_ =~ /(172.\d+.\d+.\d+)/)	{
							print"$1\n";
			}
}

