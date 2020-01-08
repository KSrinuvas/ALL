#!/usr/bin/perl -w
use strict;

##----------------------------------------------
User-defined subroutines to handle options
##----------------------------------------------

my $verbose = '';	# option variable with default value (false)
    GetOptions ('verbose' => \$verbose,
	        'quiet'   => sub { $verbose = 0 });


