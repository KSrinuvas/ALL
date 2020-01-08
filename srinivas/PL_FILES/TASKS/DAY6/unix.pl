#!/usr/bin/perl
use strict;
use warnings;

my @arr = ('ls','ls -l','pwd'); 

#print"@arr\n";
my $a;
foreach (@arr)	{
		$a = `$_`;
		print"$a\n";
}



my $b = qx(ps);

print"$b\n";

my $c = qx(ifconfig);

#print"$c\n";

