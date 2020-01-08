#!/usr/bin/perl
use strict;
use warnings;

use EXT;

my $obj = EXT->new(10,20);


my $ss = $obj->Add();

print "sum of two values : $ss\n";

my $mm = $obj->Mul();

print "mul of two values : $mm\n";


