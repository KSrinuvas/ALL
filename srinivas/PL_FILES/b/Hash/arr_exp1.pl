#!/usr/bin/perl -w
use strict;

my @arr = @ARGV;

@arr = sort {
				if ($a > $b)	{
						return -11;
				} elsif ($a < $b)	{
						return 1;
				} else {
						return 0;
				}
			} @arr;

foreach (@arr) {
		print"$_\n";
}

