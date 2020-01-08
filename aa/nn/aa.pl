#!/usr/bin/perl -w
use strict;

package AB;


sub hello {
		my $aa = shift;
		print "$aa\n";
		sub good {
				my $bb = shift;
				print "$bb\n";
		}
}





&AB::hello(100);
&AB::good(10);


hello(101);
good(11);



package CD;

our $name = "SRINU";			
