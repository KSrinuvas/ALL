#!/usr/bin/perl -w
use strict;

#my $line = "my mail id is srinu123\@gmail.com";
my $line = 'my mail id is srinu123@gmail.com';

print"$line\n";
## i want to replace the gamile to the yahoo 


$line =~ s/(\w+\@)\w+(\.com)/$1yahoo$2/;

print"$line\n";



## i want to repalce the srinu123 to vas112

$line =~ s/\w+(\@\w+\.com)/vas112$1/;

print"$line\n";
