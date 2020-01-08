#!/usr/bin/perl
use strict;
use warnings;

## format data and time 

my ($sec,$min, $hour, $mday, $mon, $year, $wday, $yday, $isdst) = localtime();

printf("TIME FORMAT  : HH:MM:SS\n");
printf("               %02d:%02d:%02d\n",  $hour,$min,$sec);





my $epoc = time();

print "$epoc\n";


