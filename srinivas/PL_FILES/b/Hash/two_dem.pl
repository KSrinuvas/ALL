#!/usr/bin/perl
use strict;
use warnings;
use Data::Dumper;
my %two_jio_planes = ( 'Monthaly' => 
																    	{ 'recharge' => 25,
																		  	'valadate' => '30Days'
																	  	},
											    'Qtrly' =>  
                                      { 'recharge' => 125,
                                        'valadate' => '90Days'
																			},
											);

#print Dumper(\%two_jio_planes);


my %three_demin = ( 'a' =>
												   {'aa' => 
																			{	'xx' => 10,
																			 	'yy' => 20,
																			 	'zz' => 30 
																			},
										        'bb' => 
																		 {	'xx' => 40,
																		  	'yy' => 50,
																				'zz' => 60
																		 },
														'cc' => 
																		 {  'xx' => 70,
																				'yy' => 80,
																				'zz' => 90
																		 }
														},
										'b' => 
														 {'aa' => 
																			{ 'xx' => 100,
																				'yy' => 200,
																				'zz' => 300
																			},
															'bb' => 
																			{ 'xx' => 410,
																				'yy' => 450,
																				'zz' => 490
																			},
															'cc' =>
																		  { 'xx' => 510,
																				'yy' => 520,
																				'zz' => 580
																			}
															},
										 'c' => 
															{'aa' => 
																			 { 'xx' => 610,
																				 'yy' => 620,
																				 'zz' => 630
																			 },
															 'bb' => 
																			 { 'xx' => 710,
																				 'yy' => 720,
																				 'zz' => 730
																			 },
															 'cc' => 
																			 { 'xx' => 810,
																				 'yy' => 820,
																				 'zz' => 830
																			 }
																}
												);
	
																


#print Dumper(\%three_demin);

										



#### to bulid the three dimentional hash

my $three_dim = {};


$three_dim->{'a'}->{'aa'}->{'xx'} = 10;
$three_dim->{'a'}->{'aa'}->{'yy'} = 20;
$three_dim->{'a'}->{'aa'}->{'zz'} = 30;

$three_dim->{'a'}->{'bb'}->{'xx'} = 40;
$three_dim->{'a'}->{'bb'}->{'yy'} = 50;
$three_dim->{'a'}->{'bb'}->{'zz'} = 60;

$three_dim->{'a'}->{'cc'}->{'xx'} = 70;
$three_dim->{'a'}->{'cc'}->{'yy'} = 80;
$three_dim->{'a'}->{'cc'}->{'zz'} = 90;

$three_dim->{'b'}->{'aa'}->{'xx'} = 100;
$three_dim->{'b'}->{'aa'}->{'yy'} = 200;
$three_dim->{'b'}->{'aa'}->{'zz'} = 300;

$three_dim->{'b'}->{'bb'}->{'xx'} = 410;
$three_dim->{'b'}->{'bb'}->{'yy'} = 450;
$three_dim->{'b'}->{'bb'}->{'zz'} = 490;

$three_dim->{'b'}->{'cc'}->{'xx'} = 510;
$three_dim->{'b'}->{'cc'}->{'yy'} = 520;
$three_dim->{'b'}->{'cc'}->{'zz'} = 580;

$three_dim->{'c'}->{'aa'}->{'xx'} = 610;
$three_dim->{'c'}->{'aa'}->{'yy'} = 620;
$three_dim->{'c'}->{'aa'}->{'zz'} = 630;

$three_dim->{'c'}->{'bb'}->{'xx'} = 710;
$three_dim->{'c'}->{'bb'}->{'yy'} = 720;
$three_dim->{'c'}->{'bb'}->{'zz'} = 730;

$three_dim->{'c'}->{'cc'}->{'xx'} = 810;
$three_dim->{'c'}->{'cc'}->{'yy'} = 820;
$three_dim->{'c'}->{'cc'}->{'zz'} = 880;


print Dumper($three_dim);


																			

### iterating the three dimentional hash 

print ref($three_dim),"\n";

while (my ($k,$v) = each (%{$three_dim}))	{
		print" '$k' => {\n";
		if (ref($v) eq 'HASH')	{
				while (my ($k1,$v1) = each (%{$v}))	{
						print"\t  '$k1' => {\n";
						if (ref($v1) eq  'HASH')	{
								while(my($k2,$v2) = each (%{$v1}))	{
										print"\t\t  '$k2' => $v2\n";
								}
						}
						print"\t         }\n";
				}
		}
		print"	 }\n";
}








																						
															


