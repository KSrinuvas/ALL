#!/usr/bin/perl
use strict;
use warnings;

my $i = 1;
my $fact = 1;
print"Find the factorial of x number: ";
my $no =<STDIN>;
chomp($no);
while ($i<=$no)	{
		$fact *=$i;
		$i+=1;
}

print"factorial of $no is $fact \n";

