#!/usr/bin/perl
use strict;
use warnings;
my @arr = (1..2);
foreach (@arr)	{
		local $a = 200;
		my $b = 400;
#		print"$b\n";
		aa();
}

sub aa {
		print"$a\n";
#		print"$b\n";
}

#print"$b\n";
=cut

sub foo { print "$x\n"; }
sub bar { local $x; $x = 2; foo(); }

$x = 1;
bar(); # prints '2' because $x was localed in bar
foo(); # prints '1' again because local from foo is no longer in effect
