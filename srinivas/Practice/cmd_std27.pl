#!/usr/bin/perl -w
use strict;

##-------------------------------------------------------------
##   write a progrmam using stdinp
##-------------------------------------------------------------

print"What is your name : ";
my $name = <STDIN>;
chomp($name);
print "hello $name it's nice to meet you\n";




##-----------------------------------------------------------
## write a simpe program on cmd arguments 
##-----------------------------------------------------------

my @arr = @ARGV;  ## COLLECTING multiple elements to the cmd line argument

print"@arr\n";

print "first element in cmd arg is : $ARGV[0]\n";

print "last element in cmd arg is : $ARGV[-1]\n";


shift(@ARGV);
print "@ARGV\n";
print "@arr\n";

print " script name is : $0\n";


