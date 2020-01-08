#!/usr/bin/perl -w
use strict;

my %hash = ('a' => undef ,'b' => 500);

## exists 

if (exists $hash{'a'})	{
		print"key is exists\n";
} else {
		print"key is not exists\n";
}


## defined 

if (defined $hash{'a'})	{
		print" the value is defined\n";
} else {
		print " the value is not defined\n";
}

$hash{'a'} = 100;


if (exists $hash{'a'})	{
		print"key is exists\n";
} else {
		print"key is not exists\n";
}


## defined 

if (defined $hash{'a'})	{
		print" the value is defined\n";
} else {
		print " the value is not defined\n";
}

