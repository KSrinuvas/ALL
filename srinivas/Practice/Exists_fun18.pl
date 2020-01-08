#!/usr/bin/perl -w
use strict;

my %hash = ('a' => 10,'b'=> 20,'c' => 30);

if (exists $hash{'d'})	{
		print" key is exists\n";
} else {
		print" key is not exists\n";
}


$hash{'d'} = undef;

if (exists $hash{'d'})	{
		print" key is exists\n";
} else {
		print" key is not exists\n";
}



