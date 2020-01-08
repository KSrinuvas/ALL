#!/usr/bin/perl -w
use strict;
my $file = $ARGV[0];
open(IN,"$file") || die "Not able to open file $!";

my %hash;
my $line1 = <IN>;
chomp($line1);
my @header = split(/,/,$line1);
shift(@header);
while (my $line2 = <IN>)	{	
			chomp($line2);
			next if ($line2 =~ /^$/);
			my @data = split(/,/,$line2);
			my $pri_key = shift(@data);
			if (@header == @data)	{
					for (my $i = 0; $i < @data;$i++)	{
								$hash{$pri_key}{$header[$i]} = $data[$i];
					}
			}
}
			
close(IN);			
use Data::Dumper;
print Dumper(\%hash);
my $cmd = $ARGV[1];

while (my ($k,$v) = each (%hash))	{
		#print"$k => $v\n";
		# if ($k eq $cmd)	{
		 if ($k =~ /$cmd/i)	{
					if (ref($v) eq 'HASH')	{
							print "$k => \n";
							while (my ($k1,$v1) = each (%{$v})) {
									print"  $k1 => $v1\n";
							}
					}
			}
}

									










