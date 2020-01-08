#!/usr/bin/perl -w
use strict;

## i want to pass a cmd line argument company name then i want to get all data of that company


my $hash_ref = {
				          'SRM03' => {
                                     'Experiance' => '8',
                                     'Age' => '22',
                                     'Name' => 'Raj',
                                     'Qualification' => 'Mca',
                                     'Salary' => '25k'
                            },
       				   'SRM01' => {
                                     'Age' => '25',
                                     'Name' => 'Srinu',
                                     'Qualification' => 'B.tech',
                                     'Salary' => '35k',
                                     'Experiance' => '5'
                            },
         				 'SRM02' => {
                                     'Experiance' => '10',
                                     'Age' => '24',
                                     'Name' => 'Vas',
                                     'Qualification' => 'Msc',
                                     'Salary' => '30k'
                            }
       			 };




#print ref($hash_ref),"\n";

while (my ($k,$v) = each (%{$hash_ref}))	{
#		print "$k => $v\n";
		if ($k eq $ARGV[0])	{
				if (ref($v) eq 'HASH')	{
						print "$k => \n";
						while (my ($k2,$v2) = each (%{$v}))	{
								print"        $k2 => $v2\n";
														
						}
				}
		}
}


