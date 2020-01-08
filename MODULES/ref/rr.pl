#!/usr/bin/perl 
use strict;
use warnings;


our $foo = "BAR";

print $foo . "\n";
${foo} = "BAZ";
print $foo . "\n";
