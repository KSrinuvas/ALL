#!/usr/bin/perl -w
use strict;

&dir();

BEGIN {
		#use lib "/home/srm/MODULES/ref1/ref2";
		unshift(@INC,"/home/srm/MODULES/ref1/ref2");
		#push(@INC,"/home/srm/MODULES/ref1/ref2");
		require "aa.PL"
}




&dir("/home/srm/MODULES/ref1/ref3/");



foreach (@INC)	{
		print"$_\n";
}


