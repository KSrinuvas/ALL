#!/usr/bin/perl
use strict;
use warnings;

use JSON;
use Data::Dumper;

my $json = '{"a":1,"b":2,"c":3,"d":4,"e":5}';

my $text = decode_json($json);
print  Dumper($text);

my $js = encode_json($text);

print "$js\n";

