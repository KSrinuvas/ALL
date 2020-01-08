#!/usr/bin/perl
use strict;
use warnings;
use Data::Dumper;
my %two = ( 'Monthaly' => 
																    	{ 'recharge' => 25,
																		  	'valadate' => '30Days'
																	  	},
											    'Qtrly' =>  
                                      { 'recharge' => 125,
                                        'valadate' => '90Days'
																			},
											);

my %seen = ();
my @key =();
my @unic = ();
my @arr = ();
while (my ($k,$v) = each (%two))	{
	#	print"$k => $v\n";
		if (ref($v) eq 'HASH')	{
				while (my ($k1,$v1) = each (%{$v}))	{
						push(@arr,[$v]);
						push(@key,$k1);
						
				}
		}	
					 
}

@unic = grep { !$seen{$_}++ } @key; 

print"@unic\n";




																						
															


