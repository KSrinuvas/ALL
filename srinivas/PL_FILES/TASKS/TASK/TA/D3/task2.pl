#!/usr/bin/perl -w
use strict;

my $a = "srinu";
my $b = 10;
my $c = "ok";

if ($a eq 'srinu') {
		if ($b == 10)	{
				if ($c eq 'ok') {
						print"above three condtion statifes\n";
				}
		}
}


## or 

if ($a eq 'srinu' && $b == 10 && $c eq 'ok') { 
		print"above three ok\n";
}

