#!/usr/bin/perl -w
use strict;

sub get_data {
		my $seeking = shift;
		my (@data , $type);
		while ( <DATA> )	{
					if ( (my ($what , $number) = /(.*)\s+(\d+)/) and ($type eq $seeking) ) {
							push (@data, $what, $number);
					} elsif ( /(\S+)/ )	{
							$type = $1;
					} else {
							next;
					}
		}
		return { @data };
}

my $ref = get_data('INDIA');
print "total population $$ref{peoples} peoples in india\n"; 
print "total population mans $$ref{mans} peoples in india\n"; 
print "total population womans $$ref{womans} peoples in india\n"; 
		







__END__

INDIA
peoples 125000000
mans 75000000
womans 50000000

USA
peoples 25000000
mans 15000000 
womans 1000000

JAPAN
peoples 55000000
mans 35000000 
womans 25000000


