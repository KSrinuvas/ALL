#!/usr/bin/perl -w
use strict;

my %hash = ('a' => 10,'b' => undef, 'c' => 22,'dd' => 100);

if (defined $hash{'b'})	{
		print " the value is defined\n";
} else { 
		print " the value is not defined\n";
}


$hash{'b'} = 200;

if (defined $hash{'b'}) {
		print " the value is defined\n";
} else { 
		print " the value is not defined\n";
}



