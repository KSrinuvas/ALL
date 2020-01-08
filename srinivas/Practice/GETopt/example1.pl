#!/usr/bin/perl

# import module
use Getopt::Long;

# set default value for option
$debug = 0;

# get value of debug flag
$result = GetOptions ("debug" => \$debug);

# print value
print "Debug flag is $debug\n";

