#!/usr/bin/perl -w
use strict;

##--------------------------------------------------------------------------------------------------
##   Collect the multiple values from the functions passing mutiple values like scalar, array,hash 
##--------------------------------------------------------------------------------------------------

sub Multiple {
		my ($na,$arr_ref,$hash_ref) = @_;
		print"Titel : $na\n";
		print "array values is : @{$arr_ref}\n";
		while (my ($k,$v) = each (%{$hash_ref})) {
				print" $k => $v\n";
		}
}

my $name = "Collect the multiple values to the function";
my @array = (1..10);
my %hash = ('a'=> 10,'b' => 20,'c' => 30);

### function call

Multiple($name,\@array,\%hash);





