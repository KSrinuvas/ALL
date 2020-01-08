#!/usr/bin/perl -w
use strict;

foreach (@ARGV)	{
	 print"$_\n";
}


print"cmd arg : @ARGV\n";
my @ar = map{$_ = $_*2}@ARGV;
print"mult each elem with 2 :@ar\n";
## updated of @ARGV 
my @add_2  = map{ $_+=2}@ARGV;
print"add to each elem 2 :@add_2\n";

my @A = map{$_ /=2}@ARGV;
print"devided each element with 2 : @A\n";

foreach (@ARGV)	{
		$_ -=2;
}

print"subtration of each element with 2 : @ARGV\n";


