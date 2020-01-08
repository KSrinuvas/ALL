#!/usr/bin/perl
use strict;
use warnings;
use Data::Dumper;
my $b = {"a"=>[1,2,5],"b"=>(6,7,10)};
print Dumper($b),"\n";
## TO ADD the missing series element in a hash of array
## Dynamic to build the ref_of hash of array
my $g;
$g->{'a'}->[0] = 1;
$g->{'a'}->[1] = 2;
$g->{'a'}->[2] = 3;
$g->{'a'}->[3] = 4;
$g->{'a'}->[4] = 5;
$g->{'b'}->[0] = 6;
$g->{'b'}->[1] = 7;
$g->{'b'}->[2] = 8;
$g->{'b'}->[3] = 9;
$g->{'b'}->[4] = 10;
print Dumper($g),"\n";
