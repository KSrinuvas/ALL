#!/usr/bin/perl
open(IN,'<ff') or die "Not able to open $!";

while (<IN>)	{
		if ($_ =~ m/morning/)	{
				print"$&\n";
		}
}


