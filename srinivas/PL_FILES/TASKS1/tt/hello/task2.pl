#!/usr/bin/perl
use strict;
use warnings;

## read the file all_notcool.txt
open(IN,'all_notcool.txt') || die "Not able to open file $!";

## Count the number of occurances of the word 'and'
my $we = 0;
while (my $line = <IN>)	{
		next if ($line =~ /^\#/);
		next if ($line =~ /^$/);
		chomp($line);
		my @aaa = split /\s+/,$line;
		foreach (@aaa)	{
				if ($_ =~ /we/)	{
						$we++;
				}
		}
}



print"number of occurances of the word 'we': $we\n";
close(IN);
