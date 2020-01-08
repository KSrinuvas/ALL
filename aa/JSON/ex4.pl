#!/usr/bin/perl
use strict;
use warnings;


use JSON;

my $perl_scalar = "hello this is srinu";
print "$perl_scalar\n";
my $json_text = to_json($perl_scalar);
my $json = encode_json($perl_scalar);

print "$json_text\n";


print "$json\n";


use Data::Dumper;

print Dumper($json);
