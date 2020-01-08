#!/usr/bin/perl -w
use strict;

die "NOt able to open file $!" unless(open(IN,'details.txt'));

my %hash;

my $header_line1 = <IN>;
chomp($header_line1);
my @header = split(/,/,$header_line1);
shift(@header);
while (my $line2 = <IN>)	{
		chomp($line2);
		my @data = split(/,/,$line2);
		my $primary_key = shift(@data);
		if (@header == @data)	{
				for (my $i = 0; $i <@header;$i++)	{
				  		$hash{$primary_key}{$header[$i]} = $data[$i]; 
				}
		}
}


use Data::Dumper;
print Dumper(\%hash);


close(IN);
