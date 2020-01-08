#!/usr/bin/perl -w
use strict;

my $mixed_ha = {
          'Foo Bar' => {
                         'Literature' => 67,
                         'Programming' => [
                                            90,
                                            91,
                                            92
                                          ],
                         'Mathematics' => 97,
                         'Art' => {
                                    'sculpture' => 68,
                                    'theory' => 47,
                                    'drawing' => 34
                                  }
                       },
          'Peti Bar' => {
                          'Mathematics' => 82,
                          'Art' => 99,
                          'Literature' => 88
                        }
        };

use Data::Dumper;

#print Dumper($mixed_ha);


#print"ref($mixed_ha)\n"; # this is the hash referance 
=c
while (my ($k,$v) = each (%{$mixed_ha}))	{
#		print"$k => {\n";
		if (ref($v) eq 'HASH')	{
				while (my ($k1,$v1) = each (%{$v}))	{
						if (ref($v1) eq 'HASH')	{
								while (my ($k2,$v2) = each (%{$v1}))	{
											print"      $k2 => $v2\n";
								}
						}
						if (ref($v1) eq 'ARRAY')	{
								foreach my $kk (@{$v1})	{
										print"               $kk\n";
								} 
						} elsif (ref($v1) eq 'HASH')	{
								while (my ($k3,$v3) = each (%{$v1}))	{
										print"        $k3 => $v3\n";
								}
						}	else {
								print"                $v1\n";						
					 }
				}
		}
}
=cut



while (my ($k,$v) = each(%{$mixed_ha}))	{
		print"$k =>  {\n";
		if(ref($v) eq 'HASH')	{
				#print"$v\n";
				while (my ($k1,$v1) = each (%{$v}))	{
						if (ref($v1) eq 'ARRAY')	{
								print"             $k1 => [ \n";
								foreach my $kk (@{$v1})	{
										print"                              $kk\n";
								} 
								print"                             ]\n";
						} elsif (ref($v1) eq 'HASH')	{
								print"              $k1 => {\n";
								while(my ($k2,$v2) = each (%{$v1}))	{
										print"                              $k2 => $v2\n";
								}
								print"                             }\n";
						} else {
								print"              $k1 => $v1\n";
						}
				}
		}
		print"           }\n";
}






















