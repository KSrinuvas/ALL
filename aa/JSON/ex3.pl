#!/usr/bin/perl
use strict;
use warnings;

use JSON;

my $hash_ref = {'a'=>10,'b'=>20,'c'=>30};

my $json = encode_json($hash_ref);
print "$json\n";



my $js =  '{"a":1,"b":2,"c":3,"d":4,"e":5}';
print "$js\n";

my $ref = decode_json($js);


use Data::Dumper;

print Dumper($ref);

