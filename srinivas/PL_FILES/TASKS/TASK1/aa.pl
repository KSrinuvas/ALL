#!/usr/bin/perl -w
use strict;
use Data::Dumper;
my %hash = ('a' => 10,'b' => 20, 'c' => {'ss' => 40,'yy' => 60},'dd' => [1,2,3,4,5]);

$hash{'dd'}->[4] = 100;

print Dumper(\%hash);







