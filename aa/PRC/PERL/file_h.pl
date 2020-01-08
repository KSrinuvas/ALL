#!/usr/bin/perl
use strict;
use warnings;


open(IN,"/home/srm/aa/PRC/TCL/aa.txt") or die "Not able to open file $!";



my $line = <IN>;
chomp($line);

print "$line\n";


my @arr = <IN>;


print "@arr\n";

seek(IN,0,0);
while (my $ll = <IN>)	{
	chomp($ll);
	print "$ll\n";
}

