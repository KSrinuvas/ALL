#!/usr/bin/perl
use strict;

use JSON;
use JSON;

my %rec_hash = ('a' => 1, 'b' => 2, 'c' => 3, 'd' => 4, 'e' => 5);
my $json = encode_json \%rec_hash;
print "$json\n";


my $hash_ref = {'a'=>10,'b'=>20,'v'=>30};

my $js = decode_json $json;


use Data::Dumper;

print Dumper($json);
print Dumper($js);


while (my ($k,$v) = each (%{$js}) ) {
		print "$k => $v\n";
}

