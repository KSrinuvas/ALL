#!/usr/bin/perl -w
use strict;

### TO pass the function multiple varibles like hash array and scalray 

sub hello {
		my ($sa,$ar,$ha) = @_;
		print"scalr is : $sa\n";
		print"array elemets is : @{$ar}\n";
		while (my ($k,$v) = each (%{$ha})) {
				print "$k => $v\n";
		}
}

my $aa = "srinu";
my @array = (1,2,3,4,5,6);

my %hash = (a=>1,b=>2,c=>3);

hello($aa,\@array,\%hash);










print"\n\n";

## return multiple elements to the function



sub Ret {
		my $aaa = "ss";
		my $arr_ref = [1,2,3,4];
		my $hash_ref = {'a'=>10,'b'=>20,'c'=>30};
		return ($aaa,$arr_ref,$hash_ref);
}

my @arr = Ret();

foreach (@arr) {
		if (ref($_) eq 'ARRAY')	{
				print "array is :\n";
				print"@{$_}\n\n";
		} elsif (ref($_) eq 'HASH')	{
				print"hash is :\n";
				while (my ($k1,$v1) = each (%{$_}))	{
						print"$k1 => $v1\n";
				}
		} else {
				print"scalr is : $_\n";
		}
}


