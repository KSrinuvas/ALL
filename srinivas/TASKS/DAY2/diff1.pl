#!/usr/bin/perl -w
use strict;



open(IN,$ARGV[0])	|| die "Not able to open file $!";
my (@arr1,@arr2,$key1,$key2,$sum1,$sum2,$avg1,$avg2,$perc1,$perc2);

my %hash1;
while (my $line1 = <IN>)	{
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
$avg1 = $sum1/1200;
$perc1 = $avg1 * 100;
print int($perc1),"\n";

$hash1{$key1} = $perc1;

while (my $line2 = <IN>)	{
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
$avg2 = $sum2/1200;
$perc2 = $avg2 * 100;
print int($perc2),"\n";

$hash1{$key2} = $perc2;


while (my ($k,$v) = each (%hash1))	{
		print"$k => $v\n";
		}


close(IN);


