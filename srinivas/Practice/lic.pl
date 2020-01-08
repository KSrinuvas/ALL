#!/usr/bin/perl -w
use strict;

##-------------------------------------------------------------------------
##  LICENCES TASK 
##-------------------------------------------------------------------------

my $file = '/home/srm/Downloads/lic_log';

## read file handler 

open(my $fh,"$file") || die "Not able to open '$file' $!";

## function call

while (my $line = <$fh>)	{
		chomp($line);
		#print"$line\n";
		Tools_Lic($line);
}

## Users of znconfirm:  (Total of 60 licenses issued;  Total of 0 licenses in use)

## shecht thorondor.seamicro.local localhost:2817438_1 (v2010.11) (licsrv05.amd.com/27003 223905), start Tue 10/9 15

#cheng sv4h102 13359.sv4h102:0 (v2011.11) (licsrv05.amd.com/27003 100246), start Mon 10/8 11:20
##-----------------------------------
# No of Tools in a file 
# No of issued liced in a file 
# No of used licecences in a file 
##-----------------------------------
my (%hash,$a,$b,$x,$y,$z);
sub Tools_Lic {
		my $line = shift;
		#print"$line\n";
		if ($line =~ /\w+\s+\w+\s+(\w+)\:\s+\(\w+\s+\w+\s+(\d+)\s+\w+\s+\w+\;\s+\w+\s+\w+\s+(\d+)\s+\w+\s+\w+\s+\w+/)	{
				#print "$1 => $2 => $3\n";
				 $x = $1;
				 $y = $2;
				 $z = $3;
				 $hash{$x}{'issued_total_licences'} = $2;
				 $hash{$x}{'used_total_licences'} = $3;
		} elsif ($line =~ /\"(\w.+)\"\s+\w.+\,\s+vendor\:\s+\w+/)	{
				$a = $1;
		#} elsif ($line =~ /(\w+)\s+\w+\s+(\/\w+\/\w+\/\d+\s+)?\(\w.+\)\,\s+start\s+\w+\s+\d+\/\d+\s+\d+\:\d+/)	{
		 } elsif ($line =~ /(\w+)\s+\w+\s+(.*)?\(\w.+\)\,\s+start\s+\w+\s+\d+\/\d+\s+\d+\:\d+/)	{
				#print"$1\n";
				$b = $1;
				$hash{$a}{'user_licensesr'}{$b}++;
		 } elsif ($line =~ /(\w+)\s+\w.+\w+\:\d.+\s+\(\w.+\)\s+\(\w.+\/\d+\s+\d+\)\,\s+start\s+\w+\s+\d+\/\d+\s+\d+\:\d+/)	{
				$hash{$a}{'user_licensesr'}{$1}++;
		} 
}

use Data::Dumper;

print Dumper(\%hash);

close($fh);
