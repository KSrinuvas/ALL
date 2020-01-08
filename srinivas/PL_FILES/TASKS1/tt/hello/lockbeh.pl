#!/usr/bin/perl
use strict;
use warnings;

my $a = "cool cake and cool summar";# and cool winter and cool rain";

$a =~ s/(?<=cool )cake/offers/;

print"$a\n";


$a =~ s/(?<!cool )summar/rain/;

print"$a\n";




