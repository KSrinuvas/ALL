#!/usr/bin/perl -w
use strict; 
#------------------------------------------------------------------#
				## Description : calculate the %differance of cells
#------------------------------------------------------------------#
sub Data {
		my %hash = ();
		my ($FH,$file_name) = @_;
		## Declaration of requirement varibles 
		my @arr = ();     
		my $sum = 0;
		my $avg = 0;
		my $ll  = 0;
		my $cell_name = undef;
		while (my $line = <$FH>) 	{
				chomp($line);	
				if ($line =~ /(\w+)\s+\{/)	{
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
							$sum = 0;  ## reset the sum of number 
							$ll = 0;   ## reset the count the length 
							$avg = 0;
						}
						@arr = (); ## Empty an array for collecting values 
				}
		}
		return \%hash;
}
open(my $ref,$ARGV[0]) || die "Not able to open file $!"; 
open(my $base,$ARGV[1]) || die "Not able to open file $!"; 
my $base_hash = Data($base);
my $ref_hash = Data($ref);

##
foreach my $rfn (keys %{$ref_hash}) {
	if (exists($base_hash->{$rfn})) {
			my $ref_avg = $ref_hash->{$rfn}->{'average'};
			my $base_avg = $base_hash->{$rfn}->{'average'};
			my $per_diff = (($ref_avg - $base_avg)/$ref_avg) * 100;
			print "$rfn % diff => $per_diff\n";
	} 
}

close($ref);
close($base);
