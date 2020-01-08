#!/usr/bin/perl -w
use strict;

package MODULE::Name;

sub hello {
		my $a = $_[0];
		my $b = $_[1];
		print "First name :$a\n";
		print "Last name :$b\n";
		my $sum = $_[0] + $_[1];
		print"$sum\n";
		mul($a,$b);
}


sub mul {
		my $sum = $_[0] * $_[1];
		print"$sum\n";
}
1;


