#!/usr/bin/perl
use strict;
use warnings;

my @names = qw/srinu vas raju sunil/;

if ($names[1] eq 'vas')	{
		if ($names[-1] eq 'sunil')	{
				print"true\n";
		}
}

my @ss;
my @arr = (1,2,3,4,5,6,7,8);

foreach (@arr)	{
		if ($_ == 5)	{
				my $b = $_;
		} else {
				next;
		}
}

print "@ss\n";

