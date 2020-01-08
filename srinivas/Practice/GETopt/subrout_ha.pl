#!/usr/bin/perl -w
use strict;
use Getopt::Long;
##-------------------------------------------------------
## User-defined subroutines to handle options
##-------------------------------------------------------
my $name= '';
 my $verbose = '';	# option variable with default value (false)
    GetOptions ('verbose' => \$verbose,   ## flag 
					'name=s' => \$name,
	        'quiet'   => sub { $verbose = 0 },
	        'set'   => sub { $verbose = $name });

if (defined $verbose)	{
		print"$verbose\n";
}


