#!/usr/bin/perl -w
use strict;
=c
while (my $line = <>)	{
		chomp($line);
		print"$line\n";
}
=cut
		
my @arr = <>;
chomp(@arr);
print"@arr\n";

