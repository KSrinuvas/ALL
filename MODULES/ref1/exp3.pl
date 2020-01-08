#!/usr/bin/perl
use warnings;
if (1<2) {
    $age =29;     #no declaration using my keyword
    print "$age\n";     
}
print "$age\n";  #accessible outside the block
