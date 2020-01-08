#!/usr/bin/perl -w
use strict;




my $d = 22;
our $a = 400;
our @ab = (1,2,3,4);
sub hh {
		local $a; 
		$a = 10;
		local $b = 100;
		bb ();

}

sub bb {
		print"inside of local variable : $a\n";
}


print "Outside of global variable : $a\n";



hh();
