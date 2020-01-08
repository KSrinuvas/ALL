#!/usr/bin/perl -w
use strict;

#A program that demonstrates the while statement.
print"check the while loop pass the no below 20: ";
my $no = <STDIN>;
chomp($no);
print"\n";
while ($no < 20)	{
		print"$no\n";
		$no++; # increment
}

print"END OF THE WHILE LOOP\n";

