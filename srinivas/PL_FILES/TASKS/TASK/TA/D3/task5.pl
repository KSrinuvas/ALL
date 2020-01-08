#!/usr/bin/perl -w
use strict;
print"Enter the no : ";
my $no = <STDIN>;
chomp($no);
my $val;
if ($no == 47)	{
		print "the value is alrady 47\n";
		$val = 1;
} else { 
		print "the value is set to 47\n";
		$val = 0;
}

print"$val\n";
 
