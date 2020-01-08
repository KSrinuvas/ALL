#!/usr/bin/perl -w
use strict;

sub data_1 {
		my $file1 = shift;
		open(IN,"$file1") || die "not able to open file $!";
	#	my %hash1;
	#	my $key1;
	#	my @value1;
	#	my $sum1;
	#	my $avg1;
	#	my $per1;
		while (my $line1 = <IN>)	{
				chomp($line1);
				print"$line1\n";
		}
}
=c
				} elsif ($line1 =~ /(cell1)/)	{ 
							$key1 = $1;
				} elsif ($line1 =~ /\d{2,}/){
							@value1 = split(/ /,$line1);
							$sum1 +=$_ foreach (@value1);		
				}
		}
		print"$sum1\n";
		$avg1 = $sum1/1200;
		print"$avg1\n";
		$per1 = $avg1 * 100;
		print"$per1\n";
		$hash1{'perc_cell1'} = $per1;
		
}
=cut
data_1($ARGV[0]);


=c
sub data_2 {




}
=cut
