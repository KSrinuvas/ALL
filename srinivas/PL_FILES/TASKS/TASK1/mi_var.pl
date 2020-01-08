#!/usr/bin/perl -w
use strict;

my %hash = ('a' => 10,'b' => 20,'c' => [1,2,3,{'bb' => 50,'cc' => 80,'dd' => [100,200,300,{'hh' => {'jj' => 500}}]}]);



while (my ($k,$v) = each (%hash))	{
		if (ref($v) eq 'ARRAY')	{
				print"$k => [ \n";
				foreach my $kk (@{$v})	{
						if(ref($kk) eq 'HASH')	{
								print"      {\n";
								while (my ($k1,$v1) = each (%{$kk})) {
										if (ref($v1) eq 'ARRAY')	{
												print"        $k1 => [\n";
												foreach my $kkk (@{$v1})	{
														if (ref($kkk) eq 'HASH')	{
																	print"                {\n";
																	while (my ($k2,$v2) = each (%{$kkk}))	{
																			print"                $k2 => {\n";
																			if (ref($v2) eq 'HASH') 	{
																					while (my($k3,$v3) = each (%{$v2}))	{
																								print"                        $k3 => $v3\n";
																					}
																			}
																			print"                      }\n";
																	}
																	print"                }\n";
														} else {
														    	print"                $kkk\n";
														}
												}
												print"              ]\n";
										} else {
												print"        $k1 => $v1\n";
										}
							  }
								print"      }\n";
						} else {
								print"      $kk\n";
						}
				}
				print"     ]\n";
		} else {
				print "$k => $v\n";
		}
}



use Data::Dumper;
print Dumper(\%hash);


## to build the hash1 in dynamic way 

## declaring hash
my %hash1;


my %hash = ('a' => 10,'b' => 20,'c' => [1,2,3,{'bb' => 50,'cc' => 80,'dd' => [100,200,300,{'hh' => {'jj' => 500}}]}]);
$hash1{'a'} = 10;
$hash1{'b'} = 20;
my $ref_a1 = [100,200,300,{'hh' => {'jj' => 500}}];
my $ref_h1 = {'bb' => 50,'cc' => 80, 'dd' => $ref_a1};
my $ref_aa = [1,2,3,$ref_h1];
$hash1{'c'} = $ref_aa;

#print Dumper(\%hash1);

 



