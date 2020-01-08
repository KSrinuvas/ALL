#!/usr/bin/perl
use strict;
use warnings;
my $a = 10;
foreach (1)	{
		local $b = 20;
		my $d = 'hello';
		print"$a\n";
		print"$b\n";
		aa();
		bb();
}
sub aa {
		print"inside the function :$b\n";
}
print "main package varible is : $a\n";
#print" undefined \$b : $b\n";

sub bb {
		print"$b\n";
}
