#!/usr/bin/perl
use strict;
use warnings;

open(IN,'file.txt') || die "Not able to open file.txt file $!";
print "enter the mail id to check the file : ";
my $ab = <STDIN>;
chomp($ab);
while (my $line = <IN>)	{
		chomp($line);
		if ($line =~ /\w+\@\w+\.\w+/)	{
				if ($& eq $ab)  {
						print"$&\n";
				} else {
						print"not matching mail id \n";
				}
		}
}
close(IN);
