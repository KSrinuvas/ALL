#!/usr/bin/perl -w
use strict;

open(IN,'details.txt') || die "Not able to open file $!";

my %hash = ();
my $header_line  = <IN>;
chomp($header_line);
my @header = split(/,/,$header_line);
shift(@header);
while (my $data_line = <IN>)	{
			chomp($data_line);
			next if ($data_line =~ /^$/); ## skip the empty lines in a file 
			next if ($data_line =~ /^\#/); ## skip the commanting lines in a file 
			my @data = split(/,/,$data_line);
			my $pri_key = shift(@data);
			if (@header == @data)	{
						for(my $i = 0; $i < @data;$i++)	{
									$hash{$pri_key}{$header[$i]} = $data[$i];
						}
			}
}

#### i want to pass a standerd input  company name then i want to get all data of that company


print"Enter the company name and get details of that company : ";
my $std = <STDIN>;	
chomp($std);

while (my ($k,$v) = each (%hash))	{
		#print "$k => $v\n";
#		if ($k eq $std)	{
		if ($k =~ /$std/i) {
				if (ref($v) eq 'HASH')	{
						print "$k => \n";
						while (my ($k1,$v1) = each (%{$v})) {
								print"    $k1 => $v1\n";
						}
				}
		}
}
			




close(IN);					 
