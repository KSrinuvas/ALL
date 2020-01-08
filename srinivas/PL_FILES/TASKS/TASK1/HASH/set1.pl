#!/usr/bin/perl -w
use strict;
#I compare two sets of hash references using Perl?
read_hash('a.txt');
my %hash;
sub read_hash {
		my $file = shift;
		open(IN,"$file") || die "Not able to open file $!";
		while (my $line = <IN>)	{
				chomp($line);
				#next if ($line = /^$/); ## skip the empty lines in a file 
				#next if ($line = /\#/); ## skip the commanting line in a file 
				$line = join' ',split' ',$line; ## remove the 2 or more white spaces in a lines
				my($key,$value) = split(/=/,$line);
				$hash{$key} = $value;
		}
		return %hash;				
		close(IN);
}


my %hash_re = read_hash("a.txt");
while (my ($k,$v) = each (%hash_re)) {
#		print"$k => $v\n";
}


sub read_hash1 {
		my $file1 = shift;
		open(IN1,"$file1") || die "Not able to open $!";
		my %hash1;
		while (my $line1 = <IN1>)	{
				chomp($line1);
				$line1 = join" ",split(" ",$line1);
				my($key1,$value1) = split(/=/,$line1);
				$hash1{$key1} = $value1;
		}
		return %hash1;
		close(IN1);
}

my %hash_re1 = read_hash1("aa.txt");


while (my ($k1,$v1) = each (%hash_re1)) { 
#		print"$k1 => $v1 \n";
}


foreach my $kk (sort(keys %hash_re))	{
		if (exists $hash_re1{$kk})	{
				print"$kk is exists in second hash\n";
		} else {
				print"$kk does not exists in second hash\n";
		}
}




