#!/usr/bin/perl -w
use strict;

use Env;

##--------------------------------------------##
##--	Setting the env path in perl          --##
##--------------------------------------------##

$ENV{'BB'} = "/home/srm/";
$ENV{'CC'} = "/home/srm/srinivas/";




## to get the 'BB' and 'CC' env varibles in perl

while (my ($key,$val) = each (%ENV) ) {
		if ($key =~ /\bbb\b/i || $key =~ /\bcc\b/i) {
				print"$key => $val\n";
		}
}
