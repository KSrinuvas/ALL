#!/usr/bin/perl -w
use strict;

## read a file let.txt 
open(IN,"<let.txt") || die "Not able to open file $!";

my $line = <IN>;
chomp($line);
my $line1 = <IN>;
chomp($line1);
while (my $line2 = <IN>)	{
			chomp($line2);
			$line = <IN>;
			$line1 = <IN>;
			print"$line2\n";
}











