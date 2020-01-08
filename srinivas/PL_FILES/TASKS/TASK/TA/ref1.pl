#!/usr/bin/perl -w
use strict;
my $hash = {clg => 
							     {
					          name => {
          						         junt =>  {
                      						        fess => 70000
                           							 },
                  						 kits =>  {
                             							 fess => 30000
                            						},
                   						 kite =>  {
                              						 fess => 35000
                            						}
                  					}
									}
      			};

use Data::Dumper;

print Dumper($hash),"\n";
 

