#!/usr/bin/perl -w
use strict; 
use Data::Dumper;
#------------------------------------------------------------------#
				## Description : calculate the %differance of cells
#------------------------------------------------------------------#
sub Data {
		my %hash = ();
		#my $FH = shift;
		#my $file_name = shift;
		my ($FH,$file_name) = @_;
		my (@keys,@values,@arr);     ## Declaration of requirement varibles  
		my $sum = 0;
		my $avg = 0;
		my $ll  = 0;
		my $cell_name = undef;
		while (my $line = <$FH>) 	{
				chomp($line);	
				if ($line =~ /(\w+)\s+\{/)	{
					push(@keys,$1);
					#$hash{$1} = undef;
					$cell_name = $1;
				} elsif ($line =~ /\d+/)	{
						push(@arr,split(/ /,$line));
				} elsif ($line =~ /\}/)	{
						foreach (@arr) { 
								 $sum +=$_;
								 $ll++;
						} ### end foreach loop to count the length of an array 
						if (defined($cell_name)) {
			    		$avg = $sum/$ll;  
							$hash{$cell_name}{'average'} = $avg;
							$sum = 0;
							$ll = 0;
							$avg = 0;
						
						}
		      	#$avg = sprintf("%.2f",$avg);
						#push(@values,$avg);
						#$ll = 0;  ## reset the count the length 
						#$sum = 0; ## reset the sum of number 
						@arr = (); ## Empty an array for collecting values 
				}
		}
		return \%hash;
}
open(my $ref,$ARGV[0]) || die "Not able to open file $!"; 
open(my $base,$ARGV[1]) || die "Not able to open file $!"; 
#&Data();
my $base_hash = Data($base);
my $ref_hash = Data($ref);

##
foreach my $rfn (keys %{$ref_hash}) {
	if (exists($base_hash->{$rfn})) {
			my $ref_avg = $ref_hash->{$rfn}{'average'};
			my $base_avg = $base_hash->{$rfn}{'average'};
			my $per_diff = (($ref_avg - $base_avg)/$ref_avg) * 100;
			print "$rfn % diff => $per_diff\n";
	} 
}

close($ref);
close($base);

=c
&Data($base);

###keys(%hash)






my ($kk1,$vv1) = Data($Ref);      ## to pass the filehandle referance $Ref to the function Data return referances
my ($kk2,$vv2) = Data($Base);     ## to pass the filehandle referance $Base to the function Data return referances

my @file1_cell =  @{$kk1};								
my @file2_cell =  @{$kk2};								
my @file1_val  =  @{$vv1};								
my @file2_val  =  @{$vv2};
				
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

=cut
