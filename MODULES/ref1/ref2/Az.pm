#!/usr/bin/perl -w
use strict;

package Test1;
		sub f1 {
				my $a = shift;
			#	print"$a\n";
				return $a;
		}



package Test2;
		sub f2 {
				my @aa = @_;
				print"@aa\n";
		}


package Test3;
		sub f3 {
				my %hash = @_;
				while (my ($k,$v) = each (%hash) ) {
						print"$k => $v\n";
				}
		}



package Test4;

our @array = (1,2,3,4);





package Test5;

our $str = "ATOZ";


#print "hello    @array\n";

1;
