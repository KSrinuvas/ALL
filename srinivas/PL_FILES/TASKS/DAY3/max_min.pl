#!/usr/bin/perl
use strict;
use warnings;
my @arr = (2,5,4,67,89,100,2000,16,1,44,57);
my @sss;
foreach  (sort(@arr))	{
		push(@sss,$_);
}

print"@arr\n";
print"@sss\n";



