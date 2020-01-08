#!/usr/bin/perl -w
use strict;

my %color_of = (
    apple  => "red",
    orange => 'ok',
    grape  => "purple",
);

while (my ($k,$v) = each (%color_of)) {
#		print"$k => $v\n";
}


## multi dimentional hash 

my %multi;

$multi{'sub'}{'English'}{'marks'} = 65;
$multi{'sub'}{'Social'}{'marks'} = 74;
$multi{'sub'}{'Mathamatic'}{'marks'} = 75;
$multi{'lab'}{'MPMC'}{'marks'} = 70;
$multi{'lab'}{'FMHM'}{'marks'} = 80;
$multi{'lab'}{'EDC'}{'marks'} = 90;

use Data::Dumper;

#print Dumper(\%multi),"\n";


foreach my $k1 (keys %multi) { 
		foreach my $k2 (keys %{$multi{$k1}}) {
					while (my ($k3,$v3) = each (%{$multi{$k1}{$k2}})) {
#								print" $k1 , $k2 , $k3 => $v3\n";
					}
		} 
}


my $ref_hash;

$ref_hash->{'clg'}->{'name'}->{'kite'}->{'fess'} = 35000;
$ref_hash->{'clg'}->{'name'}->{'kits'}->{'fess'} = 30000;
$ref_hash->{'clg'}->{'name'}->{'junt'}->{'fess'} = 70000;



 		


my %h1 = %{$ref_hash};

print"\n";
while (my ($x,$y) = each (%h1))	{
		print"$x => { \n";
		if (ref($y) eq 'HASH')	{
				while (my ($x1,$y1) = each (%{$y}))	{
						print"          $x1 => {\n";
						if (ref($y1) eq 'HASH')	{
								while (my ($x2,$y2) = each (%{$y1}))	{
											print"                   $x2 =>  {\n";
											if (ref($y2) eq 'HASH')	{
														while (my ($x3,$y3) = each (%{$y2})) {
																	print"                              $x3 => $y3\n";
														}
											}
											print"                            }\n";
								}
						}
						print"                  }\n";
				}
		}
		print"      } \n";
}













