#!/usr/bin/perl 

##--------------------------------------
#Negative Reinforcement
##--------------------------------------

use Getopt::Long;

GetOptions ('see!' => \$ss);

$ss ? print"can see\n" : print"can't see\n";


