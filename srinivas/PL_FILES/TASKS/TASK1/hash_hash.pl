#!/usr/bin/perl -w
use strict;
use Data::Dumper;
my %hash = ('a' => {'aa' => {'bb' => [1,2,3,4,5]}},
						'b' =>{'c' => {'dd' => {'gg' => 100,'hh' => 500,'abc'=>[10,20,30]}}});

print Dumper(\%hash);
#print"\n\n";
## build the hash in dynamic way same like above hash

my %hash_d;

$hash_d{'a'}->{'aa'}->{'bb'} = [1,2,3,4,5];
$hash_d{'b'}->{'c'}->{'dd'}->{'gg'} = 100;
$hash_d{'b'}->{'c'}->{'dd'}->{'hh'} = 500;
$hash_d{'b'}->{'c'}->{'dd'}->{'abc'} = [10,20,30];


print Dumper(\%hash_d);

#print"\n\n";

## build the hash_referance in dynamic way same like above hash

my $hash_ref_dy;

$$hash_ref_dy{'a'}->{'aa'}->{'bb'} = [1,2,3,4,5]; ## m1
$$hash_ref_dy{'b'}->{'c'}->{'dd'}->{'gg'} = 100;
$hash_ref_dy->{'b'}->{'c'}->{'dd'}->{'hh'} = 500; ## m1
$$hash_ref_dy{'b'}{'c'}{'dd'}{'abc'} = [10,20,30]; ## m3

print Dumper($hash_ref_dy);


## without using data::dumper module to accessing the data  

## hash_ref_dy to dereferance 

my %hash_deref = %{$hash_ref_dy};





while (my ($k,$v) = each(%hash_deref))	{
		print"$k => {\n";
		if (ref($v) eq 'HASH')	{
				while (my ($k1,$v1) = each(%{$v})) {
						print"  $k1 =>  {\n";
						if (ref($v1) eq 'HASH') {
								while (my ($k2,$v2) = each (%{$v1})) {
										#print"    $k2 => $v2\n";
										 if (ref($v2) eq 'HASH')	{
													print "       $k2 => {\n";
													while (my ($k3,$v3) = each (%{$v2})) {
															if (ref($v3) eq 'ARRAY')	{
																	print"           $k3 => [\n";
																	foreach my $kk1 (@{$v3})	{
																			print"                   $kk1\n";
																	}
																	print"                  ]\n";
															} else {	
																	print"           $k3 => $v3\n";
															}
													}
													print "             }\n";
										 } elsif (ref($v2) eq 'ARRAY') {
													print "       $k2 => [\n";
													foreach my $kk (@{$v2})	{
															print"              $kk\n";
													}
													print "             ]\n";
										}
								}
						}
						print"         }\n";
						
				}
		}
		print"     }\n";
}











