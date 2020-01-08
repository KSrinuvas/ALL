#!/usr/bin/perl -w
use strict;

sub hh {
		shift;
		shift;
		shift;
		foreach my $e (@_)	{
#				print"$e\n";
		}
}

hh(1..10);

	





my %hash = ('b'=>20,'d'=>50,a=>54,'f'=>8,'g'=>180);



my $str = "2 5 6 7 9 8 1 4";

print"$str\n";

my @arr = reverse split / /,$str;

print"@arr\n";




our @ORIG_INC = @INC; # take a handy copy of 'original' value
our $VERSION = '0.63';



print "@INC\n";

print"$VERSION\n";



