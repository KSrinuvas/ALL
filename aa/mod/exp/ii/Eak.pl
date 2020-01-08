#!/usr/bin/perl
use strict;
use warnings;

##-----------------------------------------------------##
##-- EXPORT_OK -> export the symbols on Demand basis
##-----------------------------------------------------##



use lib "/home/srm/aa/mod/exp";
use Eak;





use Eak qw(add div);

my $ad = add(10,20);

print "$ad\n";



my $tt = div(10,5);

print "$tt\n";






