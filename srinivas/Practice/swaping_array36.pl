#!/usr/bin/perl -w
use strict;

##---------------------------------------------
## swapping of an arrays 
##---------------------------------------------

my @array1 = (1,2,3);
my @array2 = (10,20,30);
my @array3 = (100,200,300);

print "@array1\n@array2\n@array3\n";

print"\n\n";
## swapping of three array 

my @temp = @array1;
@array1 = @array2;
@array2 = @array3;
@array3 = @temp;

print "@array1\n@array2\n@array3\n";

