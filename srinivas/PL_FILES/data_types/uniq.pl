#!/usr/bin/perl
use strict;
use warnings;

my @arr = (1,2,3,4,5,1,2,3,4,5,1,2,3,4,5);
my %hash;
my @unic;
foreach (@arr)	{
		if(! $hash{$_}++)	{
				push(@unic,$_)
		}
}

print"@unic\n";


use List::MoreUtils qw(uniq);

my @uu = uniq @arr;

print "@uu\n";




sub uniq {
		my %seen;
		return grep { !seen{$_}++} @_;
}


