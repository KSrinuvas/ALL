#!/usr/bin/perl 
use strict;

package abc;

our $NAME = "Raju";
my $age = 25;

print "pakage abc value of NAME is : $abc::NAME\n";

our @arr = (1,2,3,4,5);

print "pakage abc value of age is : $abc::age\n";


print "@abc::arr\n";


our %hash = ('a'=>10,'b'=>20);




Data(\@abc::arr);



sub Data {
		my $hh = shift;
		foreach (@{$hh}) {
				print"$_\n";
		}
}


Hash_ref(\%abc::hash);



sub Hash_ref {
		my $h_ref = shift;
		while (my ($k,$v) = each (%{$h_ref}))  {
				print "$k => $v\n";
		}
}

