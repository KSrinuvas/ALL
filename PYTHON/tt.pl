#!/usr/bin/perl
use strict;
use warnings;
use Data::Dumper;
my %hash = (1 => 'a',2 => 'b', 3 => 'b', 4 => 'b');

my %hash1 = ();

my @kk = keys(%hash);
my @vv = values(%hash);

print "@kk\n";
print "@vv\n";

my $i = 0;
while ($i < @kk) {
    $hash1{$vv[$i]} = $kk[$i];
    $i++;
}



print Dumper(\%hash);
print Dumper(\%hash1);
