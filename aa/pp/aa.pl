#!/usr/bin/perl 
use strict;
use warnings;
use Env;

print "$ENV{'HOME'}\n";
print "$PATH\n";

foreach ( (%INC) ) {
		print "$_\n";
}


print "$ENV{'HOME'}\n";
print "$PATH\n";









