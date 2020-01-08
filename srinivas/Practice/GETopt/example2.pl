#!/usr/bin/perl -w
use strict;
# import module
use Getopt::Long;

my $red;
my $blue;
my $green;

# read options
my $result = GetOptions (  "red" => \$red,
                "blue" => \$blue,
                "green" => \$green );

# print options
$red ? print "Red is present\n" : print "Red is absent\n";
$blue ? print "Blue is present\n" : print "Blue is absent\n";
$green ? print "Green is present\n" : print "Green is absent\n";


#Here's an example of the output:


=c
$ ./colors.pl  --red --blue
Red is present
Blue is present
Green is absent
=cut
