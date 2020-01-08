#!/usr/bin/perl
use strict;
use warnings;

open(IN,'t');

while(my $line = <IN>)	{
		chomp($line);
		print"$. $line\n";
}
print"$=\n";
