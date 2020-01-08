#!/usr/bin/perl -w
use strict;

use Env;

##------------------------------------------------##
##--   Setting Perl environment variables       --##
##------------------------------------------------##

$ENV{'AA'} = "/home/srm/";


#print"$ENV{'AA'}\n";


while (my ($k,$v) = each (%ENV) ) {
		if ($k eq 'AA')	{
				print"$k => $v\n";
		}
}




