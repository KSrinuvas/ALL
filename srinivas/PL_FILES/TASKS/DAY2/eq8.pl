#!/usr/bin/perl
use strict;
use warnings;
use Data::Dumper;
my @arr = (1,5,6,8,10,4,2,4,3);
my (@array,$i,$j);
foreach $i (@arr)	{
		foreach $j (@arr)	{
				if ($i+$j==8)	{
						push(@array,[$i,$j]);
				}
		}	
}

print Dumper(\@array),"\n";
