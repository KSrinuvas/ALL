#!/usr/bin/perl -w
use strict;

## program which prints the next five no's after the no typerd in stdin 

print"Enter the no print the next five numbers : ";
my $no = <STDIN>;
chomp($no);
$no = $no+1;
my $max = $no + 5;

while ($no < $max)	{
		print"$no\n";
		$no++;
}


