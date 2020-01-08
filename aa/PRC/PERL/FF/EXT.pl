#!/usr/bin/perl
use strict;
use warnings;

use lib "/home/srm/aa/PRC/PERL/";
use EXT;

my $obj = EXT->new(10,2);

my $ss = $obj->Add();

print "sum of two values : $ss\n";


my $pp = $obj->Mul();

print "mul of two values : $pp\n";






