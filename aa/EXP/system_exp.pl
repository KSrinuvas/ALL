#!/usr/bin/perl -w
use strict;

##------------------------------------------------------------##
##--              System command in perl										--##
##------------------------------------------------------------##


## system command return the status 0 and 1
## return 0 if it succeeds. 
## return 1 if it fails.


my $ret = system('pwd');

if ($ret == 0)	{
		print"status is succeeds\n";
} else {
		print"status is fails\n";
}

