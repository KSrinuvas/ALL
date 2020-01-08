#!/usr/bin/perl

## generate the random numbers 1 to 100




foreach (1..100) {
	my $aa =  rand($_);
	printf("%.f",$aa);
	print "\n";
}


