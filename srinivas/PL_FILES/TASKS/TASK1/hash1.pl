#!/usr/bin/perl -w
use strict;
use Data::Dumper;
my %hash = ('a' => 10,'b' => 20);
my $aa = delete $hash{'b'};
#print"$aa\n";
my @arr = (1,2,3,4,5,6);
my @a = delete @arr[0..2];
#print"@a\n";
## updated the hash value 
$hash{'a'} = 200;  ## updated key a value 10 to 200
## add the 
$hash{'bb'} = 400;
## add cc
$hash{'cc'} = 500;
while (my ($k,$v) = each (%hash))	{
#		print"$k => $v\n";
}

my $arr_ref = [1,2,3,4,5];

my $hash_ref = \%hash;

my %hash_dy;
$hash_dy{'arr'} = $arr_ref;
$hash_dy{'has'} = $hash_ref;

while (my ($k1,$v1) = each (%hash_dy))	{
		if (ref($v1) eq 'HASH')	{
				print"$k1 => {\n";
				while (my ($k2,$v2) = each (%{$v1}))	{	
						print" $k2 => $v2\n";
				}
				print"       }\n";
		} elsif(ref($v1) eq 'ARRAY')	{
				print" $k1 = [\n";
				foreach my $kk (@{$v1})	{
						print"         $kk\n";
				}
				print"       ]\n";
		}
			
}

#print Dumper(\%hash_dy);


