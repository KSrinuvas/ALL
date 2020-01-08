#!/usr/bin/perl -w
use strict;

my $k = 10; # a varible assigned value 10;

if (defined $k)	{
		print"k is defined\n";
} else {
		print"no k is not defined\n";
}

undef $k;

#check if the variable is defined or not 
if (defined $k) 
{ 
    print "k is defined\n"; 
}  
else
{ 
    print "k is not defined\n"; 
}


my %set = map { $_ => $_ } 'a' .. 'z';

 
