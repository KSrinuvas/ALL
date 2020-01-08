#!/usr/bin/perl
use strict;
use warnings;

my @arr = (1,2,3,4,5,6,7);

foreach (@arr)	{
		next ($_ == 2);
}
print"$_\n";

