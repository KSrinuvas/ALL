#!/usr/bin/perl -w
use strict;
use Data::Dumper;
my @arr = (1,2,{'a' => [1,2,3,{'dd'=>55,'cc'=>[50,20,'gg' => 88]}]});

print Dumper(\@arr);

push(@arr,100,200);


delete @arr[3,4];

my $ref_arr = \@arr;

push(@{$ref_arr},100,200);


print Dumper(\@arr);
