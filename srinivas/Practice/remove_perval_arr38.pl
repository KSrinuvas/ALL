#!/usr/bin/perl -w
use strict;

#---------------------------------------------------------------
## remove the particular value from an array 
#---------------------------------------------------------------

## by using splice function 

##example 

my @array = (1,2,3,4,5,100,200,6,7,8);
print "@array\n";
## i dont required 100 in an array 

my @rele = splice(@array,5,2);

print"@rele\n";
print "@array\n";
