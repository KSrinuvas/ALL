#!/usr/bin/perl -w
use strict;

my %hash = ('SRM01' => {'name'=>'ss','age'=>20,'salary'=> undef},
						'SRM02' => {'name'=>'YY','age'=>10,'salary'=>'15k'});

use Data::Dumper;


push(@{$hash{SRM01}{salary}},['10k','20k','30k']);




$hash{SRM01}{age} = [1,2,3,4];


push(@{$hash{SRM01}{age}},5,6,7);

push(@{$hash{SRM01}{age}},[8,9,10]);

### ADD SRM03
$hash{SRM03}{name} = 'bb';
$hash{SRM03}{age} = 15;
$hash{SRM03}{salary} = '18k';

my $hash_ref = \%hash;

$$hash_ref{SRM04}{name} = 'cc';
$$hash_ref{SRM04}{age} = 12;
$$hash_ref{SRM04}{salary} = '12k';


## updated the SRM01 age 
$$hash_ref{SRM01}{age} = 22;

## updated the  SRM01 salary

$hash_ref->{SRM01}{salary} = "35k";



#print Dumper(\%hash);


#### i want to pass a cmd line argument company name then i want to get all data of that company

my $cmd = $ARGV[0];
while (my ($k,$v) = each (%{$hash_ref})) {
#		print"$k => $v\n";
		if ($k eq $cmd)	{
				print "$k => \n";
				if (ref($v) eq "HASH")	{
						while (my ($k1,$v1) = each (%{$v}))	{
								print"   $k1 => $v1\n";	
						}
				}
		}
}	

