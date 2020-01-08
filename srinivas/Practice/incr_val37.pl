#!/usr/bin/perl -w
use strict;

#------------------------------------------------------------------------
## Increment an array value by 2 some no is enter the input command line
#------------------------------------------------------------------------

my $no = $ARGV[0];


my @arr = (1..5);
print"@arr\n";

foreach (@arr)	{
		$_ +=$no;
}

print"@arr\n";
