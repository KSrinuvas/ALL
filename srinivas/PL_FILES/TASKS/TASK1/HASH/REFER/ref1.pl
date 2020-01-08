#!/usr/bin/perl -w
use strict;
=c
my @arr = <DATA>;

#print"@arr\n";
chomp(@arr);
foreach (@arr)	{
		next if /^$/;
		next if /\#/;
		$_ = join' ',split' ',$_;
#		print"$_\n";
		
}
=cut
my %hash;
while (my $line = <DATA>)	{
		chomp($line);
		next if ($line =~ /^$/);
		next if ($line =~ /^\#/);
		$line = join' ',split' ',$line;
		my @abc = split' ',$line;
		foreach (@abc) {
				$hash{$_} = 1;
#				print"$&\n" if ($_ =~ /\bsrinu\b/i);#match the srinu
#				print"$_\n" if ($_ eq 'HELLO'); 	
#				print"$_\n" if ($_ eq 'SRINIVAS');
#				print"$&\n" if ($_ =~ /(.*?)s$/i); #match the hi 
		}
}

## updated the hash values 1 to 5
while (my ($K,$v) = each (%hash))	{
			$hash{$K} = 5;
}

while (my ($k1,$v1) = each (%hash)) {
#		print "$k1 => $v1\n";
}

## updated the hash values 5 to '222';
my $a = 1;
%hash = map{ ($_,$a++)}keys %hash;

## cont the no of keys in a hash;
my $count = 0;
## sum of all key values 
my $sum = 0;
my $avg;
while (my ($k2,$v2) = each (%hash))	{
		print"$k2 => $v2\n";
		$sum+=$v2;
		$count++;
		$avg = $sum/$count;
}
print "no of keys in a hash: $count\n";
print "sum of all values in a hash: $sum\n";
print "average of hash values : $avg\n";
=c
my @array = map{$_}<DATA>;
chomp(@array);
print"@array\n";
=cut

__END__
HELLO how was
HI bad                     ll aa
abc           hij
GOOD
OK


##this is comment line 


SRINIVAS


##this is comment line 

SRINU


VAS
