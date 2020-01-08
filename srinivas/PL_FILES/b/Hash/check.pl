#!/usr/bin/perl -w
use strict;

my %hash = ('a'=>1,'b'=>2);

## referance of hash

my $hash_ref = \%hash;

## i want to updated the hash_referance 

$hash_ref->{'c'} = 3;

## i want to updated the hash

$hash{'d'} = 4;

use Data::Dumper;

print Dumper (\%hash);

print Dumper ($hash_ref);
