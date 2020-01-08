#!/usr/bin/perl
use strict;
use warnings;







=c
print("Enter the name: ");
my $a = <>;
chomp($a);
print"$a where are u from\n";

sub hi {
		my $a = $_[0];
		chomp($a);
		print"enter your name :$a\n";
		$a = <STDIN>;
}

hi();

=cut



sub hello {
		my $c = shift;
		print"@_\n";
		return $c;
}




