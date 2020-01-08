#!/usr/bin/perl
use strict;
use warnings;
open(IN,'l.txt') || die "Not able to open l.txt file $!";
open(OUT,'>wri.txt') || die "Not able to write file $!";
while (my $line = <IN>)	{
		chomp($line);
		my $bb = data($line);
		if ($bb == 1)	{
				print OUT "$line - This is a vowel\n";
		}
}

sub data {
		my $d = shift;
		if ($d =~ /a|e|i|o|u/i)	{
				return 1;
		} else {
				return 0;
		}
}

