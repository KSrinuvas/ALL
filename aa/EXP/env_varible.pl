#!/usr/bin/perl -w
use strict;
use Env;


##----------------------------------------------##
##--	 Setting the env variable in perl				--##
##----------------------------------------------##

$ENV{'AA'} = '/home/srm/srinivas/';
$ENV{'BB'} = '/home/srm/aa/';
$ENV{'CC'} = '/home/srm/ref/';




while (my ($k,$v) = each (%ENV)	)	{
	#	print "$k => $v\n";
		if ( ($k eq q/AA/) || ($k eq q/BB/) || ($k eq q/CC/) )  {
#		  	print"$k => $v\n";
		}
}


print "$ENV{'AA'}\n";
print "$ENV{'BB'}\n";
print "$ENV{'CC'}\n";


