#!/usr/bin/perl -w
use strict;

##-------------------------------------------
## using alternatives with pipes (|) options 
##-------------------------------------------

## import module 
use Getopt::Long;

my $color;
my $help;

## write a GetOptions 
GetOptions ('colour|color|c=s' => \$color,
						'help|h' => \$help) or die ("Error in command line arguments");

## to develop the help function for users understanding 

sub help {
		print "$0 is script name\n";
		print"
		color <Enter the color><mandatory>,
		Ex :perl $0 -color (or) -color (or) -c 'red'\n";
}

if (defined $help)	{
		&help();
}

$color ? print "the color is defined\n" : print"the color is not defined\n"; 

if (defined $color)	{
		print "$color\n";
}




