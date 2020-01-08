#!/usr/bin/perl
use strict;
use warnings;
print "to exit the script enter the 0 : ";
my $aa = <STDIN>;
chomp($aa);




if ($aa == 0)	{
	print "ok bye\n";
	exit;
}	else {
	print "the value us not a zero the script is not exitsn\n";
}


foreach (1..10) {
	print "$_\n";
}



