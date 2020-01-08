#!/usr/bin/perl -w
use strict;

## use Env module to collect the environment variables in a perl
use Env;


##--------------------------------------------------------------------------##
###---------    To collcet the environment variables in a perl    ----------##
##--------------------------------------------------------------------------##

my $pp = $PATH;

my @path_list = split(/\:/,$pp);

foreach my $path (@path_list)	{
		print"$path\n";
}




print "present working dir is : $PWD\n";



