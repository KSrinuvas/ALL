#!/usr/bin/perl
use strict;
use warnings;

## until loop

my $no = 20;
print "until loop is start\n";
until($no < 10) {  ## until satisfe the false statement
		print"$no\n";
		$no--;
}
print"until loop is ended\n";


my $no2 = 2;

until($no2 > 10)	{
		print"$no2\n";
		$no2++;
}

