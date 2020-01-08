#!/usr/bin/perl -w
use strict;

# @ARGV The array contanings the cmd line arguments intended for script;

foreach (@ARGV)	{
		print"$_\n";
}

print" file name : $0\n";

print" First cmd argument is :$ARGV[0]\n";
print" Last cmd argument is : $ARGV[-1]\n";
print" Last cmd argument is : $ARGV[$#ARGV]\n";
