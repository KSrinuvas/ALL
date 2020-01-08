#!/usr/bin/perl 
use strict;
use warnings;
use Env;
use Data::Dumper;

print "$INC{'strict.pm'}\n";


print "$INC{'Env.pm'}\n";

print "$INC{'Data/Dumper.pm'}\n";

print "$ENV{'HOME'}\n";

$ENV{'HELLO'}  = qw(/home/srm/srinivas/);

print "$ENV{'HELLO'}\n";


