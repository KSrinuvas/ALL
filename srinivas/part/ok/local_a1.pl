#!/usr/bin/perl -w
use strict;

sub Abc {
		local ($a,$b) = @_;
#		print "$a\n";
#		print "$b\n";
		my $a = 100;
		my $b = 200;
	#	print "$a\n";
	#	print "$b\n";
		Data ($a,$b);
		Data1();
}



my @aa = (1..5);
my %hash = ('a'=>10,'b'=>20);

Abc(\@aa,\%hash);



sub Data {
		my $k1 = shift;
		my $k2 = shift;
	#	print "$k1\n";
	#	print "$k2\n";
	#	print "$a\n";
	#	print "$b\n";
}


if (1) {
		local $a = 50;
		local $b = 80;
		Data("hello",$b);
		Data1();
}



sub Data1 {
	#	print"$a\n";
	#	print"$b\n";
		my @aa;
		push (@aa,$a,$b);
		foreach (@aa) {
				if (ref($_) eq 'ARRAY')	{
						print"@{$_}\n";
				} elsif (ref($_) eq 'HASH') {
						print %{$_},"\n";
				} else {
						print "$_\n";
				}
		}
}

		


