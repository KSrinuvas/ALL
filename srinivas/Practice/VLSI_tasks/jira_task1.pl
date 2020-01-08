#!/usr/bin/perl -w
use strict;
##-------------------------------------------------------------
## Description: Read file and build the hash in dynamic way 
##-------------------------------------------------------------

my $file = 'jira.txt';

## read file 
open(IN,"$file") || die "Not able to open '$file' $!";

my %hash;
my $key = '';
my $k = '';
my $v = '';
while (my $line =<IN>)	{
		chomp($line);
		#print"$line\n";
		if ($line =~ /(\w+)\=(\w+\,)/)	{
				$key = $1;
				$hash{$key} = $2;
		} elsif ($line =~ /\=/)	{
				#print"$` => $'\n";
				$k = $`; ### pre match
				$v = $';  ### post match
				$hash{$k} = $v;
		} else {
				$hash{$key} .=$line;
		}					
}	

use Data::Dumper;
print Dumper(\%hash);

## close filehandler 
close(IN);
