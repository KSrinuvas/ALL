#!/usr/bin/perl
use strict;
use warnings;
my $m = 100;  ## main package
if (1)	{
		local $a = 20;
		my $b = 25;
		aa();
}
sub aa {
		print"$a\n";	
#		print"$b\n";  ## undefined $b 
}
print"$m\n";
