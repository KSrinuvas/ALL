#!/usr/bin/perl -w
use strict;

## file1 data
my $file11 = $ARGV[0];
open(my $fh1,"$file11")	|| die "Not able to open file $!";
my $main_hash;
my %hash1;
sub data_1 {
		my $FH1 = shift;
		my (@arr1,@arr2,$key1,$key2,$len1,$len2,$sum1,$sum2,$avg1,$avg2,$perc1,$perc2);
		while (my $line1 = <$FH1>)	{
				chomp($line1);
				if ($line1 =~ /\}/)	{
						last;
				} elsif ($line1 =~ /(cell1)/) {
						$key1 = $1;
				} elsif ($line1 =~ /\d{2,}/)	{
						push(@arr1,split(/ +/,$line1));
				}
		}
		$sum1 +=$_ foreach (@arr1);
		$len1 = @arr1;
		$avg1 = $sum1/$len1;
		$perc1 = $avg1 * 100;
		#print int($perc1),"\n";

		$hash1{$key1} = sprintf("%.2f",$perc1);

		while (my $line2 = <$FH1>)	{
				chomp($line2);
				#print"$line2\n";
				if ($line2 =~ /\}/)	{
						next;
				} elsif ($line2 =~ /(cell2)/ ) {
						$key2 = $1;
				} elsif ($line2 =~ /\d{2,}/)	{
						push(@arr2,split(/ +/,$line2));
				}
		}

		$sum2 +=$_ foreach (@arr2);
		$len2 = @arr2;
		$avg2 = $sum2/$len2;
		$perc2 = $avg2 * 100;
		#print int($perc2),"\n";

		$hash1{$key2} = sprintf("%.2f",$perc2);

		while (my ($k,$v) = each (%hash1))	{
				print"$k => $v\n";
		}
} # close finc data_1

data_1($fh1); ## passing the file handle referance to the function data_1
close($fh1);

## file2 data
my $file22 = $ARGV[1];
open(my $fh2,"$file22") || die "not able to open file $!";
my %hash2;
sub data_2 {
		my $FH2 = shift;
		my (@arr3,@arr4,$key3,$key4,,$len3,$len4,$sum3,$sum4,$avg3,$avg4,$perc3,$perc4);
		while (my $line3 = <$FH2>)	{
				chomp($line3);
				if ($line3 =~ /\}/)	{
						last;
				} elsif ($line3 =~ /(cell1)/) {
						$key3 = $1;
				} elsif ($line3 =~ /\d{2,}/)	{
						push(@arr3,split(/ +/,$line3));
				}
		}
		$sum3 +=$_ foreach (@arr3);
		$len3 = @arr3;
		$avg3 = $sum3/$len3;
		$perc3 = $avg3 * 100;
		#print int($perc3),"\n";

		$hash2{$key3} = sprintf("%.2f",$perc3);

		while (my $line4 = <$FH2>)	{
				chomp($line4);
				#print"$line4\n";
				if ($line4 =~ /\}/)	{
						next;
				} elsif ($line4 =~ /(cell2)/ ) {
						$key4 = $1;
				} elsif ($line4 =~ /\d{2,}/)	{
						push(@arr4,split(/ +/,$line4));
				}
		}

		$sum4 +=$_ foreach (@arr4);
		$len4 = @arr4;
		$avg4 = $sum4/$len4;
		$perc4 = $avg4 * 100;
		#print int($perc4),"\n";
		$hash2{$key4} = sprintf("%.2f",$perc4);
		
		while (my ($k1,$v1) = each (%hash2))	{
				print"$k1 => $v1\n";
		}
} ## close func data_2

data_2($fh2);  # passing the file handle referance to the function data_2
close($fh2);

### To calculate difference of cell1 and cell2 both the file 
my @keys = sort(keys %hash1);
#print"@keys\n";

my ($cell1_diff,$cell2_diff);
foreach my $kk (@keys)	{
		if ($kk eq 'cell1')	{
				if ($hash1{$kk} < $hash2{$kk})	{
						$cell1_diff = $hash2{$kk} - $hash1{$kk};
				} elsif ($hash1{$kk} > $hash2{$kk})	{
						$cell1_diff = $hash1{$kk} - $hash2{$kk};
				}
		} elsif ($kk eq 'cell2')	{
				if ($hash1{$kk} < $hash2{$kk})	{
						$cell2_diff = $hash2{$kk} - $hash1{$kk};
				} elsif ($hash1{$kk} > $hash2{$kk})	{
						$cell2_diff = $hash1{$kk} - $hash2{$kk};
				}
		}
}
				
#print"differance of cell1 is : $cell1_diff\n";				
#print"differance of cell2 is : $cell2_diff\n";				

print "\n         Design Report\n\n";
print "------------------------------------\n";
print " Design\t\t\%Difference\n"; 
print "------------------------------------\n\n";
print " cell1\t\t $cell1_diff\n";
print " cell2\t\t $cell2_diff\n";
print "------------------------------------\n";


$main_hash->{'file1_sum_cells'} = \%hash1;
$main_hash->{'file2_sum_cells'} = \%hash2;
#$main_hash->{'file1'} = \%hash1;
#$main_hash->{'file2'} = \%hash2;
$main_hash->{'cells_differances'}{'cell1'} = $cell1_diff;
$main_hash->{'cells_differances'}{'cell2'} = $cell2_diff;

use Data::Dumper;

print Dumper($main_hash);
## 
## accessing the hash referance data

while (my ($key1,$val1) = each (%{$main_hash}))	 { 
		#print"$key1 => $val1\n";
		if (ref($val1) eq 'HASH')	{
				print"$key1 => \n";
				while (my ($key2,$val2) = each (%{$val1}))	{
						print"             $key2 => $val2\n";
				}
				print"\n";
		}
}

