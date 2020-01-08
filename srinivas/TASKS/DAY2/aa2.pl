#!/usr/bin/perl -w
use strict; 
use Data::Dumper;
################################################
## Declaration of requirement varibles  
my ($hash_ref,@arr,$ll,$sum,@sum1,$avg,@keys,@values);

####################################################################
				## Description : calculate the %differance of cells
####################################################################

sub Data {
		my $FH = shift;
		while (my $line = <$FH>)	{
				chomp($line);	
				if ($line =~ /(\w+)\s+\{/)	{
						push(@keys,$1);
				} elsif ($line =~ /\d+/)	{
						push(@arr,split(/ /,$line));
				} elsif ($line =~ /\}/)	{
						foreach (@arr) { 
								 $sum +=$_;
								 $ll++;
						} ### end foreach loop to count the length of an array 
			    	$avg = $sum/$ll;  
		      	$avg = sprintf("%.2f",$avg);
						push(@values,$avg);
						$ll = 0;  ## reset the count the length for next iteration
						$sum = 0; ## reset the sum of numbers for next iteration
						@arr = (); ## Empty an array for collecting next iteration values 
				}
		}
}
open(my $Ref,$ARGV[0]) || die "Not able to open file $!"; 
open(my $Base,$ARGV[1]) || die "Not able to open file $!"; 
Data($Ref);      ## to pass the filehandle referance $Ref to the function Data
Data($Base);     ## to pass the filehandle referance $Base to the function Data
my @file1_cell = @keys[0..1];
my @file2_cell = @keys[2..$#keys];
my @file1_val = @values[0..1];
my @file2_val = @values[2..$#values];
my ($d1,$d2);
foreach my $pp (@ARGV)	{
		if ($pp eq $ARGV[0])	{
				for(my $i = 0;$i < @file1_cell;$i++)	{
						$$hash_ref{$pp}{$file1_cell[$i]} = $file1_val[$i];
						#$d1 = $file1_val[$i];
				}		
		} elsif ($pp eq $ARGV[1])	{
				for(my $i = 0;$i < @file2_cell;$i++)	{
						$$hash_ref{$pp}{$file2_cell[$i]} = $file2_val[$i];
						$d1 = $file1_val[$i];
						$d2 = ($d1 - $file2_val[$i])/($d1) * 100;
						$$hash_ref{"diff"}{$file2_cell[$i]} = sprintf("%.2f",$d2);
				}
		}
}
print Dumper($hash_ref);
