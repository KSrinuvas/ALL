#!/usr/bin/perl -w
use strict;

my %hash = (a=>1,b=>2);

unless (!defined $hash{'a'})	{
#		print"yes\n";	
}
my @an_array = (1,2,3);
my %a_hash = (a=>1,b=>2,D=>20); 
#if (@an_array) { print "has array elements\n"; }
#if (%a_hash)   { print "has hash members\n";   }

my ($val,$sym,$bar,$value,$debugging);
my @ary = @an_array;
my %switch = %a_hash;





#print "$val\n" while defined($val = pop(@ary));


while (defined($val = pop(@ary)))	{
		print"$val\n";
}



sub bar {
			return @_;
}
my @arr = (1,2,3,4,5);
my $aa = \&bar;
my @a = &$aa(@arr); 
print"@a\n";

sub foo { 
					defined &$bar ? $bar->(@_) : die "No bar"; }

foo(10,20,30);

#$debugging = 0 unless defined $debugging;

