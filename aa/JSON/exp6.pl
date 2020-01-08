#!/usr/bin/perl
use strict;
use warnings;

use JSON;

my $json = JSON->new();

my $js_f  = '{"name":"ss","age":20}';

print "$js_f\n";



my $hash_ref = $json->decode($js_f);

use Data::Dumper;

print Dumper($hash_ref);



my @array = (1..10);

my $json1 = $json->encode(\@array);

print "$json1\n";




## str 

my $str = "hello world";

my $json2 = $json->encode($str);

print "$json2\n";
