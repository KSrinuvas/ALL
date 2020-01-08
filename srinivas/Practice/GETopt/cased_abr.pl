#!/usr/bin/perl -w
use strict;
use Getopt::Long;

#--------------------------------------
##Case and abbreviations
#--------------------------------------

my $length;
my $head;

GetOptions ('length|height=f' => \$length, "head" => \$head);

if (defined $length)	{
		print"$length\n";
}

