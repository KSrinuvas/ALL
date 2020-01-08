#!/usr/bin/perl -w

## merging of two file line by line and save the file in file3.txt

## read file1.txt 
open(IN1,'file1.txt') || die "Not able to open file $!";

## read another file file2.txt
open(IN2,'file2.txt') || die "Not able to open file $!";

open(OUT,">file3.txt") || die "Not able to write a file $!";

# file 2 data

while (my $line1 = <IN1>)	{
		chomp($line1);
		next if($line1 =~ /^$/);
		print"$line1\n";
		$line2 = <IN2>;
		chomp($line2);
		next if ($line2 =~ /^$/);
		print"$line2\n";
		print OUT "$line1\n$line2\n";
}

close(IN1);
close(IN2);
close(OUT);
