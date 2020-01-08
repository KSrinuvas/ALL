#!/usr/bin/perl
use strict;
use warnings;

use JSON;

my $hash_ref  = {'a' => 10, 'b' => 30, 'c' => 40};

my $json = new JSON;

my $jj = $json->encode($hash_ref);

print "$jj\n";



## decode 

my $hash_ref2 = $json->decode($jj);

use Data::Dumper;

print Dumper($hash_ref2);



