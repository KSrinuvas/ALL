#!/usr/bin/perl
use strict;
use warnings;

my @key = ('a'..'z');
my @val = (100,1..26);

my %hash = ();

@hash{@key} = @val;




foreach my $k (sort keys %hash) {
		print "$k => $hash{$k}\n";
}


