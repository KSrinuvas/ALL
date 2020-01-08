#!/usr/bin/perl -w
use strict;

use 5.010;

my @arr = (1..10);

foreach (@arr)	{
	#	say $_;
}


my %hash =('a' => 10,'b' => 20);

foreach my $key (keys %hash)	{
		say $key ." => ".$hash{$key};
}
