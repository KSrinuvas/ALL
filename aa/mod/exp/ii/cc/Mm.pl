#!/usr/bin/perl
use strict;
use warnings;

use Mm;

my $obj = Calc::new();

my $sum = $obj->add(10,20,30);

print "$sum\n";

$obj->{'sum'}= $sum;



