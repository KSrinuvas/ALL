#!/usr/bin/perl -w
use strict;

=c
for {set i 2} {$i < 100} {incr i} {
    for {set j 2} {$j <= [expr $i/$j] } {incr j} {
        if { [expr $i%$j] == 0} {
            break
        }
    }
    if {$j > [expr $i/$j] } {
        puts "$i is prime"
    }
}
=cut

my ($i,$j);
for ($i =2;$i<100;$i++)	{
		for ($j = 2; $j <= $i/$j;$j++)	{
				if ($i%$j == 0)	{
						last;
				}
		}
		if ($j > $i/$j) {
				print" $i is prime\n";
		}
}
