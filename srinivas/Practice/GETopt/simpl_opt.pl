#!/usr/bin/perl -w
use strict;
use Getopt::Long;

#---------------------------------
## Sample options 
##--------------------------------

#Ex:    --all --verbose --quiet --debug  
=c
my $verbose = '';	# option variable with default value (false)
my $all = '';	# option variable with default value (false)
GetOptions ('verbose' => \$verbose, 'all' => \$all);

if (defined $all)	{
		print"$all\n";
}
=cut

 my $verbose = '';	# option variable with default value (false)
    GetOptions ('verbose+' => \$verbose);
