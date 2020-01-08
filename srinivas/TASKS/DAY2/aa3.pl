#!/usr/bin/perl -w
use strict; 
use Data::Dumper;
#------------------------------------------------------------------#
				## Description : calculate the %differance of cells
#------------------------------------------------------------------#
sub Data {
		my $FH = shift;
		my (@keys,@values,@arr,$ll,$sum,$avg);     ## Declaration of requirement varibles  
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
						$ll = 0;  ## reset the count the length 
						$sum = 0; ## reset the sum of number 
						@arr = (); ## Empty an array for collecting values 
				}
		}
		print"@keys\n";
		print"@values\n";
		return (\@keys,\@values);
}
my $ref_file = $ARGV[0];
my $base_file = $ARGV[1];
open(my $Ref,$ref_file) || die "Not able to open file $!"; 
open(my $Base,$base_file) || die "Not able to open file $!"; 
#my ($kk1,$vv1) = Data($Ref);      ## to pass the filehandle referance $Ref to the function Data return referances
#my ($kk2,$vv2) = Data($Base);     ## to pass the filehandle referance $Base to the function Data return referances

#my @file1_cell =  @{$kk1};								
#my @file2_cell =  @{$kk2};								
#my @file1_val  =  @{$vv1};								
#my @file2_val  =  @{$vv2};
				
my ($hash_ref,$d1,$d2);
foreach my $pp (@ARGV)	{
		if ($pp eq $ARGV[0])	{
				for(my $i = 0;$i < @file1_cell;$i++)	{
						$$hash_ref{$pp}{$file1_cell[$i]} = $file1_val[$i];
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
