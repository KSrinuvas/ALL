#!/usr/bin/perl -w
use strict;
use Data::Dumper;

my %four_dim = ('vsm' => { kakinada=>{marks=>{english=>97,social => 92,mathamatics => 94,physics => 99,drawing => 99}}},'kite' => {rajamandry=>{marks=>{english=>92,social => 98,mathamatics => 97,physics => 93,drawing => 90}}});
													
													
#print Dumper \%four_dim;

my %four_dimentional_hash;

## bulid the dynamic way 

## school ranks 

$four_dimentional_hash{vsm}{kakinada}{marks}{english} = 97;
$four_dimentional_hash{vsm}{kakinada}{marks}{social} = 92;
$four_dimentional_hash{vsm}{kakinada}{marks}{mathamatics} = 94;
$four_dimentional_hash{vsm}{kakinada}{marks}{physics} = 99;
$four_dimentional_hash{vsm}{kakinada}{marks}{drawing} = 99;



$four_dimentional_hash{kite}{rajamandry}{marks}{english} = 92;
$four_dimentional_hash{kite}{rajamandry}{marks}{social} = 98;
$four_dimentional_hash{kite}{rajamandry}{marks}{mathamatics} = 97;
$four_dimentional_hash{kite}{rajamandry}{marks}{physics} = 93;
$four_dimentional_hash{kite}{rajamandry}{marks}{drawing} = 90;


#print Dumper \%four_dimentional_hash;
 

## accessing the four_dimentional hash 

while (my ($k,$v) = each (%four_dim))	{
		print"$k => \n";
		if (ref($v) eq 'HASH') {
				while (my ($k1,$v1) = each (%{$v}))	{
						print"    $k1 => \n";
						if (ref($v1) eq 'HASH') {
									while (my ($k2,$v2) = each(%{$v1})) {
											print"           $k2 => \n";
											if (ref($v2) eq 'HASH')	{
													while (my ($k3,$v3) = each  (%{$v2}))	{
															print"                 $k3 => $v3\n";
													}
											}
									}
						}
				}
		}
}




print"\n\n";



foreach my $name (sort keys %four_dimentional_hash) {
			foreach my $sub (keys %{$four_dimentional_hash{$name}})	{
					foreach my $sub1 (keys %{$four_dimentional_hash{$name}{$sub}})	{
							foreach my $sub2 (keys %{$four_dimentional_hash{$name}{$sub}{$sub1}})	{	
									print "$name ,$sub ,$sub1, $sub2  => $four_dimentional_hash{$name}{$sub}{$sub1}{$sub2}\n";
							#		print "$name \f$sub \f$sub1 \f$sub2  => $four_dimentional_hash{$name}{$sub}{$sub1}{$sub2}\n";
							}
					}
			}
}


## check the rank consider marks in a two colleges



while (my ($x,$y) = each (%four_dim))	{
		print"$x => $y\n";
		if (ref($y) eq 'HASH') {
				while (my ($x1,$y1) = each (%{$y}))	{
						print"$x1 => $y1\n";
						if (ref($y1) eq 'HASH')	{
								while (my ($x2,$y2) = each (%{$y1})) {
										print" $x2 => $y2\n";
										if (ref($y2) eq 'HASH')	{
												while (my ($x3,$y3) = each (%{$y2}))	{
															if ($	
												}
										}
								}
						}
				}
		}
}





