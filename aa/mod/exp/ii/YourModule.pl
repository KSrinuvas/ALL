#!/usr/bin/perl 
use strict;
use warnings;

use lib "/home/srm/aa/mod/exp";

 
use YourModule;
#use YourModule qw(add);

print add(10,20),"\n";





my $rr = &YourModule::add(100,200);

print "$rr\n";


