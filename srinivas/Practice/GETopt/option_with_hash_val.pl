#!/usr/bin/perl -w
use strict;
use Getopt::Long;
#my %defines;
#GetOptions ("define=s" => \%defines) or Warn ("Error in command line argument");

use Data::Dumper;

#print Dumper(\%defines);





## option take multiple values at once 

my %hash;

GetOptions ("key=s{3,7}" => \%hash) or Die ("Error in command line arguments");

print Dumper(\%hash);

