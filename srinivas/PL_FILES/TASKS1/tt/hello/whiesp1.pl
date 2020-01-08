#!/usr/bin/perl
use strict;
use warnings;

## read a file ok.txt

open(IN,'ok.txt') || die "Not able to open ok.txt file $!";
while (my $line = <IN>)	{
				next if ($line =~ /^\#/);
				$line = join ' ', split ' ',$line;
				chomp($line);
				next if ($line =~ /^$/);
				print"$line,\n";
}

## close the file handler
close(IN);
			
		
