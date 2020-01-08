#!/usr/bin/perl -w
use strict;


require Uu;
require Ok;



BEGIN {
		unshift (@INC, "/home/srm/srinivas/part/ok/");
}



foreach (keys (%INC) )	{
		print"$_\n";
		print "$INC{$_}\n";
}


Ok::hh("THIS IS OK");
Ok::hh("THIS OK");
Ok::hh("THIS OK");
Ok::hh("THIS OK");
Ok::hh("THIS OK");
