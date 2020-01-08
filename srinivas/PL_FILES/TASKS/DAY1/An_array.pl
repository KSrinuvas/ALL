#!/usr/bin/perl
use strict;
use warnings;
use Data::Dumper;
#anonimas array

## referance 

my $arr = [1,2,3,4,5,6,7,8,9];

# dereferance  @{$arr}

## accessing anonimas array elements -> [dereferance quantifier]

print"$$arr[0]\n";

print"@$arr\n";



## array
my @ar = (1,2,4,5);
print"@ar\n";




## dynamic way builid the anonimas array 

my $ann = [];

$ann->[0] = [1..20];
$ann->[1] = [5,6,7];



print"$$ann[1]->[0]\n";

## i want element 20
print"$$ann[0]->[-1]\n";
 
## 

print Dumper($ann),"\n";
