#!/usr/bin/perl
use strict;
use warnings;

use Math;

## import the sum package 

## using Export_ok 
#import sum qw(aa);
#import mul qw(bb);


## using Export
import sum;
import mul;

## add

my $bb = aa(10,20);

print "$bb\n";


## mul 

my $dd = bb(2,4);

print "$dd\n";

