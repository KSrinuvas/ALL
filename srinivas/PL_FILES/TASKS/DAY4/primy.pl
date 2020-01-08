#!/usr/bin/perl
use strict;
use warnings;
use List::MoreUtils qw(uniq);
my @aaa;
my @arr = (1..100);
foreach my $i (@arr)	{
		foreach my $j (2..$i)	{
				if ($i%$j==0)	{
						last;
				} else	{
	#					print"$i\n";
						push(@aaa,$i);
				}
		}
}

## unic keys 
my @uniq_val = uniq (@aaa);

print "primy no of 1 to 100: @uniq_val\n";
print "size of the array: ",scalar @uniq_val,"\n";

