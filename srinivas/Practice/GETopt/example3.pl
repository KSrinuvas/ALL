#!/usr/bin/perl -w
use strict;

use Getopt::Long;

my $red;
my $blue;
my $green;

GetOptions ('red' => \$red,
						'blue' => \$blue,
						'green' => \$green
					) || die ("Error in command line arguments\n");

## print Results 
$red ? print"the red is present\n" : print"the red is not present\n";
$blue ? print"the blue is present\n" : print "the blue is not present\n";
$green ? print"the green color is present\n" : print "the green color is not present\n";


