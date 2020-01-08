#!/usr/bin/perl
use strict;
use warnings;
use Data::Dumper;

my @arr = (1..10);

my $ref = \@arr;

print Dumper($ref),"\n";

