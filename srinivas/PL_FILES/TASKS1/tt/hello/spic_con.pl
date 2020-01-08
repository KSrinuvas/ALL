#!/usr/bin/perl
use strict;
use warnings;

## Global Special Constants 

print"package name is " . __PACKAGE__ . "\n";
print "file name is " . __FILE__ . "\n";
print" no of lines" . __LINE__ . "\n";


open(IN,'ok.txt');

my $line = <IN>;
chomp($line);
