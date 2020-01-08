#!/usr/bin/perl -w
use strict;


my (@val1,@val2);
sub data_1 {
		my $file1 = shift;
		open(IN,"$file1") || die "Not able to open file $!";
		my ($key1,$key2);
		while (<IN>)	{
				chomp($_);
				if ($_ =~ /\}/)	{
							last;
				} elsif ($_ =~ /(cell1)/)	{	
						$key1 = $1;
				} elsif ($_ =~ /\d{1,3}/)	{
						push(@val1,split(/ /,$_));
				}
		}
		
		while (<IN>)	{
				chomp($_);
				if ($_ =~ /\}/)	{
						next;
				} elsif ($_ =~ /(cell2)/) {
							$key2 = $1;
				} elsif ($_ =~ /\d{1,3}/)	{
						push(@val2,split(/ /,$_));
				}
		}
 		print"@val1\n";
		print"@val2\n";
}


data_1($ARGV[0]);
