#!/usr/bin/perl
use strict;
use warnings;
open(IN,'l2.txt') || die "Not able to open l2.txt file $!";
my ($rabbit,$boy,$toy) = (0,0);
while (my $line = <IN>)	{
		next if ($line =~ /^\#/);
		next if ($line =~ /^$/);
		chomp($line);
		my @arr = split(/\s+/,$line);
		foreach (@arr)	{
				if ($_ =~ /rabbit/i) {
						$rabbit++;
				} if ($_ =~ /boy/i)	{
						$boy++;
				} if ($_ =~ /toy/i) {
						$toy++;
				}
		}
}
print"COUNT THE NO OF rabbits IN A FILE :$rabbit\n";
print"COUNT THE NO OF boy IN A FILE :$boy\n";
print"COUNT THE NO OF toybox IN A FILE :$toy\n";
close(IN);
