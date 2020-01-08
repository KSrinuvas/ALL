#!/usr/bin/perl -w
use strict;

use 5.010;

sub dir { 
   my $dir =  shift || "/home/srm/srinivas/part/ok/";
    
   opendir my $dh, $dir or die "Could not open '$dir' for reading '$!'\n";
   my @things = readdir $dh;
   foreach my $thing (@things) {
       if ($thing eq '.' or $thing eq '..') {
           next;
       }
       say $thing;
   }
   closedir $dh;
}
1;
