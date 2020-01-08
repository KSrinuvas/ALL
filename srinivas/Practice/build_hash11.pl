#!/usr/bin/perl -w
use strict;
use Data::Dumper;
my $file = '/home/srm/srinivas/PL_FILES/TASKS1/l2.txt';

## Read file 
open(my $fh,"$file") || die "Not able to open '$file' $!";

my $hash_ref = Count ($fh);

print Dumper($hash_ref);

sub Count {
		my $H = shift;
		my %hash = ();
		while (my $line = <$H>)	{
				chomp($line);
				next if ($line =~ /^\#/);
				next if ($line =~ /^\$/);
				foreach my $aa (split' ',$line) {
						print "$aa\n";
						$hash{$&}++ if ($aa =~ /rabbit/i); 
						$hash{$&}++ if ($aa =~ /\bthe\b/); 
						$hash{$&}++ if ($aa =~ /\bare\b/); 
						$hash{$&}++ if ($aa =~ /\bin\b/);	
						$hash{$&}++ if ($aa =~ /\byou\b/);	
				}
		}
		return \%hash;
}		

close($fh);



