#!/usr/bin/perl -w
use strict;
## import the module 
use Data::Dumper;

##--------------------------------------------------------------------
## Description: read a text file and build the hash
##--------------------------------------------------------------------
my $data = "data.txt";

## read file 
open(IN,"$data") || die "Not able to open '$data' $!";
my %hash;
my $key = '';
while (my $line = <IN>)	{
		chomp($line);
		next if ($line =~ /^$/); ## to skip the empty line in a file 
		if ($line =~ /(^\#+)(\w+)/)	{
				$key = $2;
		} elsif ($line =~ /(^\w.+)\=(\d+)/)	{
				$hash{$key}{$1} = $2;
		}
}
print Dumper(\%hash);

## close filehandelar
close(IN);
