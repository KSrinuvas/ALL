#!/usr/bin/perl
use strict;
use warnings;

print"$ARGV[0]\n";
print"$ARGV[1]\n";
print"$ARGV[2]\n";
print"$ARGV[3]\n";

my $a = $#ARGV+1;

print "Total arguments passed to the script : $a\n";

my $count = 0;

foreach (@ARGV) {
		$count++;
}
print"Total arg passed to the script : $count\n";

my $sum = 0;
my $avg;
foreach (@ARGV) {
		 $sum += $_;
		 $avg = $sum/$a;
}

print"average value is : $avg\n";		
