#!/usr/bin/perl -w
use strict;
use Data::Dumper;
my %hash = ('a' => {'bb' => [1,2,3,{'dd' => 550,'ee' => [10,20,{'ff' => [30,40]}]}]});
print Dumper(\%hash);


## build the same hash in dynamic

## referance 

my $hash_ref = {};

$hash_ref->{'a'}->{'bb'}->[0] = 1;
$hash_ref->{'a'}->{'bb'}->[1] = 2;
$hash_ref->{'a'}->{'bb'}->[2] = 3;
$hash_ref->{'a'}->{'bb'}->[3]->{'dd'} = 550;
$hash_ref->{'a'}->{'bb'}->[3]->{'ee'}->[0] = 10;
$hash_ref->{'a'}->{'bb'}->[3]->{'ee'}->[1] = 20;
$hash_ref->{'a'}->{'bb'}->[3]->{'ee'}->[2]->{'ff'} = [30,40];


print Dumper($hash_ref);







while (my ($k,$v) = each (%hash))	{
	#	print"$k => $v\n";
		if (ref($v) eq 'HASH')	{
				while (my ($k1,$v1) = each (%{$v}))	{
					#	print"$k1 => $v1\n";
						if (ref($v1) eq 'ARRAY')	{
								foreach my $kk (@{$v1})	{
										if (ref($kk) eq 'HASH')	{
												while (my ($k2,$v2) = each (%{$kk}))	{
														if (ref($v2) eq 'ARRAY')	{
																foreach my $kk1 (@{$v2})	{
																		if (ref($kk1) eq 'HASH')	{
																				while (my ($k3,$v3) = each (%{$kk1}))	{
																						if (ref($v3) eq 'ARRAY')	{
																								foreach my $kk2 (@{$v3})	{
																										print"$kk2\n";
																								}
																						} else {
																								print"$k3 => $v3\n";
																						}
																				}
																		} else {
																		print"$kk1\n";
																		}
																}	
														} else {
																print" $k2 => $v2\n";
														}
												}
										} else {
												print"$kk\n";
										}
								}
						}
				}
		}
}



my $hash_ref1 = {};

$$hash_ref1{'a'}{'bb'}[0] = 1;
$$hash_ref1{'a'}{'bb'}[1] = 2;
$$hash_ref1{'a'}{'bb'}[2] = 3;
$$hash_ref1{'a'}{'bb'}[3]{'dd'} = 550;
$$hash_ref1{'a'}{'bb'}[3]{'ee'}[0] = 10;
$$hash_ref1{'a'}{'bb'}[3]{'ee'}[1] = 20;
$$hash_ref1{'a'}{'bb'}[3]{'ee'}[2]{'ff'} = [30,40];

print Dumper($hash_ref1);


