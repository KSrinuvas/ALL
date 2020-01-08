#!/usr/bin/perl
use strict;
use warnings;

use Data::Dumper;

#my %marsupial = map { ($_, 1) } qw(koala kangaroo possum wombat);

#chomp( my @amphibians = <DATA> );

#my %amphibian = map { ($_, 1) } @amphibians;

#print Dumper \%amphibian, \%marsupial;

my @arr = <DATA>;
chomp(@arr);
print "@arr\n";
__END__
frog
toad
salamander
newt
caecilian






