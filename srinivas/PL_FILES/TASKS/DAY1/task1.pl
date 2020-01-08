#!/usr/bin/perl
use strict;
use warnings;
use Data::Dumper;
## annonimas array
my $a = [1,2,3,[100,200],4,5,6,7,8,9];
## to print the first elements 
print"first element in the Annonimas array: $$a[0]\n";
print"last element in the Annonimas array : $$a[-1]\n";
print ref($a),"\n";
my $c;
$c->[0] = 1;
$c->[1] = 2;
$c->[2] = 3;
print"@{$c}\n";
my @new = @{$c};
print Dumper(\@new),"\n";
print "100 => $$a[3]->[0]\n";
