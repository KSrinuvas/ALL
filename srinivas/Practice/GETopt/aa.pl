#!/usr/bin/perl -w
use strict;

use Getopt::Long;

my $arr;

GetOptions ("name=s%" => \$arr);

use Data::Dumper;

print Dumper($arr);
