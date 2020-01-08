#!/usr/bin/perl -w
use strict;


my $next;
my $n=<>;
my $f= 0;
my $s = 1; 
for (my  $i = 0 ; $i < $n ; $i++) {
		if($i<= 1 )  {
				$next=$i;
		} else {
				$next = $f + $s;
				$f = $s;
				$s = $next;
		}
    print(" the fibonacci series:$next \n");
		#print "$i\n";
}





