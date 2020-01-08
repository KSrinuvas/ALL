#!/usr/bin/perl
use strict;
use warnings;

use Ttt;

use Data::Dumper;

my $obj = Ttt->new();


my $res = $obj->Add(1,2,3,4,5,6,7);

print "$res\n";


