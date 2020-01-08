#!/usr/bin/perl
use strict;
use warnings;
use Data::Dumper;

my $ss = {'a'=>[1,2,3,4],"b"=>[5,6,7,8]};

##  dynamic way 

my $s;

$$s[0]{'a'} = [1,2,3,4];
$$s[1]{'b'} = (5,6,7,8);

print Dumper($s),"\n";




print"7 ===> $$ss{'b'}->[2]\n";
