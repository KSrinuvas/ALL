#!/usr/bin/perl -w
use strict;

die "Not able to open $!" unless (open(IN,'a.txt'));
die "Not able to open $!" unless (open(IN1,'b.txt'));
my $line1 = <IN>;
chop($line1);
while (my $line = <IN1>)	{
		print"$line1\n";
		chomp($line);
		print"$line\n";
		$line1 = <IN>;
		chomp($line1);
}




 
