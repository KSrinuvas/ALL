#!/usr/bin/perl
use strict;
use warnings;

=c
1. Write out English descriptions of the following regular expressions, and describe what the
operations actually do:
$var =~ /(\w+)$/
$code !~ /^#/
s/#{2,}/#/g
=cut

my $var = "this is srinu vas hello hi";

#if ($var =~ /(\w+)$/) { 
		print"$&\n";
}

unless ($var !~ /^(\w+)/) {
#		print"$&\n";
}



my $code = "#hello srinu";

if ($code !~ /^#/)	{
		print"$code\n";
}	else {
		print"there is not strated \#\n"; 
}


$_ = "### hello ### hi";

print"$_\n";


s/#{3,}/#/g;

print"$_\n";



