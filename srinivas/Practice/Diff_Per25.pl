#!/usr/bin/perl -w
use strict;
open(my $ref,"Ref.txt") || die "Not able to open 'Ref.txt' $!";
open(my $base,"Base.txt") || die "Not able to open 'Base.txt' $!";
#---------------------------------------------------------------
##    Calculate the % differance of coverages 
#---------------------------------------------------------------

sub Read_Data {
		my %hash = ();
		my $key = undef;
		my $sum = 0;
		my $len = 0;
		my $avg = 0;
		my @values = ();
		my $fh = shift; 
		while (my $line = <$fh>)	{
				chomp($line);
				next if ($line =~ /^$/);
				#print"$line\n";
				if ($line =~ /(\w+)\s+\{/)	{
						$key = $1;
				}  elsif ($line =~ /\d+\.\d+/)	{
							push(@values,split(/ /,$line));
				} elsif ($line =~ /\}/)	{
						#	print"@values\n";	
							foreach my $cc (@values)	{
									$sum +=$cc;
									$len++;
							}  ## count the length of an array
						#	print"length is : $len\n";	
						#	print"sum is : $sum\n";
							$avg = $sum/$len;
						#	print"average value : $avg\n";
							$hash{$key} = $avg;
							@values = ();
							$sum = 0;
							$len = 0;
				}
		}
		return \%hash;
}

my $ref_hash = Read_Data($ref);
my $base_hash = Read_Data($base);

foreach my $item (keys %{$ref_hash})	{
		if (exists $base_hash->{$item})	{
				my $diff = ( ($ref_hash->{$item} - $base_hash->{$item}) / ($ref_hash->{$item}) * 100); 
				print "$item difference is : $diff\n";
		}		
}
close($ref);
close($base);
