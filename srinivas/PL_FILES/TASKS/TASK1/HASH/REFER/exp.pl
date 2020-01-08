#!/usr/bin/perl -w
use strict;
=c
open(IN,'tt');
my %hash;

while (my $line = <IN>)	{
		chomp($line);
		unless ($hash{$line}++)	{
		#		print"$line\n";
				next;
		}
		print"$line\n";
}

while (my ($k,$v) = each (%hash)) {
	#	print"$k => $v\n";
}
=cut

my $aa  = {a=> [1,2,3,4],b=> {aa=>{bb=>[10,20,{cc=>22}]}}};


