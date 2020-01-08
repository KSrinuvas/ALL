#!/usr/bin/perl -w
use strict;




my %hash = ('Sales' =>    { 
                                'Brown' => 'Manager', 
                                'Smith' => 'Salesman', 
                                'Albert' => 'Salesman',  
                            },  
            'Marketing' =>  { 
                                'Penfold' => 'Designer', 
                                'Evans' => 'Tea-person', 
                                'Jurgens' => 'Manager',  
                            }, 
            'Production' => { 
                                'Cotton' => 'Paste-up', 
                                'Ridgeway' => 'Manager', 
                                'Web' => 'Developer',  
                            }, 
            );  





foreach my $k1 (keys %hash)	{
		print"$k1: \n";
		foreach my $v1 (values %hash{$k1}) {
				print"      $v1\n";
		}
}


