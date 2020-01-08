#!/usr/bin/perl
use strict;
use warnings;

use YourModule;

 
use YourModule qw(add);

my $res = add(10,20);

print "result : $res\n";

