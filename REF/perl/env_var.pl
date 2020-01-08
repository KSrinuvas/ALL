#!/usr/bin/perl
use strict;
use warnings;
use Env;


while (my ($k,$v) = each (%ENV))	{
#	#print "$k => $v\n";
}



#print "$ENV{'HOME'}\n";




$ENV{'NEW'} = "this is new env varible ";

$ENV{'FF'} = "this is sdgsg ";
$ENV{'DD'} = "this is sdgsg ";
$ENV{'HH'} = "this is sdgsg ";

#print "$ENV{'NEW'}\n";




if (exists $ENV{'HOME'}) {
	#print "yes it is exists \n";
} else {
	#print "home is not exists in env \n";
}



$ENV{'PP'} = undef;


if (defined $ENV{'PP'}) {
	#print "yes it is defined\n";
} else {
	#print " it is not defined\n";
}



while (my ($k2,$v2) = each (%ENV))	{
	if ($k2 eq 'NEW' or $k2 eq 'FF' or $k2 eq 'DD' or $k2 eq 'HH')	{
		print "$k2 => $v2\n";
	}
}



