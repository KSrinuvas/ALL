#!/usr/bin/perl
use strict;
use warnings;

use JSON;


use Data::Dumper;
## string in json format ;

my $json = new JSON;

my $str = "this is world";

my $js_s = $json->encode($str);


print Dumper($str);
print "string in json format : $js_s\n";




## array in json foramt 

my @array = (1..10);

my $js_a = $json->encode(\@array);

print Dumper(\@array);
print "array in json format : $js_a\n";


## hash in json format 

my %hash =  ('a'=>10,'b'=>20,'c'=> 30);

my $js_h = $json->encode(\%hash);
print Dumper(\%hash);
print "hash in json format : $js_h\n";








