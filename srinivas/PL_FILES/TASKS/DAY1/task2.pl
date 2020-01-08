#!/usr/bin/perl
use strict;
use warnings;
use Data::Dumper;
my $h = {'a'=>[1,2,3,4],'b'=>[5,6,7,8,9]};
### to accessing the referance values of hash
print $$h{'a'}[0],"\n";
my $hash;
$hash->{'a'} = [1,2,3,4];
$hash->{'b'}=(5,6,7,8,9);
print Dumper($hash),"\n";
print Dumper($h),"\n";
print"$$h{'b'}->[-1]\n";
