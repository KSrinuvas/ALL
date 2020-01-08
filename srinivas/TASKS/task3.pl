#!/usr/bin/perl -w
use strict;

# read a file details.txt
my $file = '/home/srm/srinivas/TASKS/details.txt';
open(IN,"$file") || die "Not able to open file $!";

## bulid the dynamic hash to read a file details.txt 
my %hash_dynamic = ();

my $line = <IN>;
chomp($line);
my @header = split(/,/,$line);
shift(@header);
while (my $line1 = <IN>)	{
			chomp($line1);
			next if ($line1 =~ /^$/);
			next if ($line1 =~ /^\#/);
			my @data = split(/,/,$line1);
			my $pri_key = shift(@data);
			if (@header == @data)	{
					my $i = 0;
					while ($i < @data)	{
							$hash_dynamic{$pri_key}{$header[$i]} = $data[$i];
							$i++;
					}
			}
}

use Data::Dumper;
print Dumper(\%hash_dynamic);


#### i want to pass a cmd line argument company name then i want to get all data of that company
 
my $cmd = $ARGV[0];
while (my ($k,$v) = each (%hash_dynamic))	{
	#	print "$k => $v\n";
	#	if ($k eq $cmd)	{
		if ($k =~ /$cmd/i) {
				if (ref($v) eq 'HASH')	{
						print "$k => \n";
						while (my ($k1,$v1) = each (%{$v}))	{
								print"      $k1 => $v1\n";
						}
				}
		}
}

close(IN);
	
			

