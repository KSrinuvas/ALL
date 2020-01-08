#!/usr/bin/perl
use strict;
use warnings;

my %hash = qw/a 10 b 20 c 30 d 40/;
sub hh { 
		my %ha = @_;
		while(my ($k,$v) = each (%ha))	{	
	#			print"$k => $v\n";
		}
}

hh(%hash);


my @ab = qw/a 10 b 20 c 30 d 40/;
=c
sub return_hash {
    my %hash;

    for (@_) {
        

    }
    while (my ($k1,$v1) = each (%hash))	{	
				print"$k1 => $v1\n"; 
		}
}
return_hash();
=cut


my @ww = qw/1 2 3 4 5/;

foreach (@ww)	{
		  	
}















