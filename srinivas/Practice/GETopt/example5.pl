#!/usr/bin/perl -w
use strict;



## -------------------------------
## read the name 
## -------------------------------

# import module
use Getopt::Long;
my $name;
# read options
my $result = GetOptions ("name=s" => \$name);

# print value

print "Input name is $name\n" if (defined $name);	

=c
Here's the output:

$ ./script.pl --name=John
Input name is John
=cut
