#!/usr/bin/perl
use strict;
use warnings;


my $dir = "/home/srm/aa/*.pl";

my @files = glob( $dir);

foreach (@files) {
#	print "$_\n";
}






my @file = glob("/home/srm/*.py");

foreach (@file) {
	print "$_\n";
}



## 

opendir (DD,".") || die "not able to open dir ";



foreach my $a (sort(readdir(DD))) {
	print "$a\n";
}


close(DD);









#mkdir ("gdg");



$dir = "/home";

# This changes perl directory  and moves you inside /home directory.
chdir( $dir ) or die "Couldn't go inside $dir directory, $!";
print "Your new location is $dir\n";


