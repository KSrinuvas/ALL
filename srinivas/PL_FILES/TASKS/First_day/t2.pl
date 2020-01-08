#!/usr/bin/perl
use strict;
use warnings;
use Data::Dumper;
my $a = [[1,2,3,4,5],{"A"=>6},(7,8,9)];
print Dumper($a),"\n";
#my $val = values %{$a->[1]->{'A'}};
#print Dumper($val),"\n";
### dynamic way 
my $cc;
$cc->[0]->[0] = 1;
$cc->[0]->[1] = 2;
$cc->[0]->[2] = 3;
$cc->[0]->[3] = 4;
$cc->[0]->[4] = 5;
$cc->[1]->{"A"} = 6;
$cc->[2][0] = 7;
$cc->[2][1] = 8;
$cc->[2][2] = 9;
print Dumper($cc),"\n";
my @a = @{$cc};
print "@a\n";
