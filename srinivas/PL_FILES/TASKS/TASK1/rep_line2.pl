#!/usr/bin/perl -w
use strict;


## remove the duplicate lines in a file and write the updated file 
open(IN,'aa.txt') || die "Not able to open file $!";
my %hash;

while (my $line = <IN>)	{
			chomp($line);		
			if (defined $hash{$line}) {
					next;
			}
			print"$line\n";
			$hash{$line}++;
}

close(IN);


				





