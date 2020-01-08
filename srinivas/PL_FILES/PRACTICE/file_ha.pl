#!/usr/bin/perl -w
use strict;

my $file = $ARGV[0];
open(IN,"$file") || die "Not able to open file $!";

while (my $line = <IN>)	{
		chomp($line);
		print"$line\n";
}

