#!/usr/bin/perl -w
use strict;


## mixed dimentions 

my %data = ('a' => {aa => [10,20,30]});

my $mixed_dim;

$$mixed_dim{'a'}{'aa'}[0] = 10;
$$mixed_dim{'a'}{'aa'}[1] = 20;
$$mixed_dim{'a'}{'aa'}[2] = 30;


while (my ($k,$v) = each (%data)) {
		while (my ($k1,$v1) = each (%{$v}))	{
					if (ref($v1) eq 'ARRAY')	{
							print"$k => { \f $k1 => [\n";
							foreach my $kk (@{$v1})	{
									print"                $kk\n";
							}
							print"              ]\n";
					}
					print"     }\n";
		}
}


print"\n\n";

### referance accessing

while (my ($k2,$v2) = each(%{$mixed_dim}))	{
		print"$k2 => {\n";
		if (ref($v2) eq 'HASH')	{
				while (my ($k3,$v3) = each(%{$v2}))	{
						print"      $k3 => [\n";
						if (ref($v3) eq 'ARRAY')	{
								foreach my $kkk (@{$v3})	{
										print"              $kkk\n";
								}
						}
						print"             ]\n";
				}
		}
		print"      }\n";
}
