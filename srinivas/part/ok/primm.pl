#!/usr/bin/perl
use strict;
use warnings;
use List::MoreUtils qw(uniq);

my @arr = (1,2,1,3,1,2,1,3,1,2,1,2,1,5,1,2,1,3,1,2,1,5,4,1,6,8,9,7,5,6,3);

my @uni = uniq (sort(@arr));

print"@uni\n";

