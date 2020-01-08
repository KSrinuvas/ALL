#!/usr/bin/perl
use strict;
use warnings;

my $aa = "hello = srinu";

#print "$aa\n";



if ($aa =~ /(\w+)\s+\=\s+(\w+)/) {
	print "$&\n";
	print "$1\n";
	print "$2\n";
}



if ($aa =~ /\=/)	{
	print "first match : $'\n";
	print "last match : $`\n";

}



