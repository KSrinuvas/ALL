#!/usr/bin/perl -w
use strict;
use Getopt::Long;
##-----------------------------------------------------------------
## Description: Read the file and build the hash in dynamic way 
##-----------------------------------------------------------------

my $file = '';
my $help;
GetOptions ('file=s' => \$file,
						'help|h' => \$help) or die ("Error in command line arguments\n");

if (defined $help)	{
		&help();
}

## To write a help function users understanding
sub help {
		print "$0 this is script name\n";
		print "
		file <Enter the file name><Mandatory>
		Ex: perl $0 -file jira.txt\n";
}

## read a file 
open(my $fh,"$file") || die "Not able to open '$file' $!";

sub Build_Hash {
		my $fh = shift;  ## $fh is file handler referance
		my %hash;
		my $key = '';
		while (my $line = <$fh>)	{
				chomp($line);
				#print"$line\n";
				if ($line =~ /(\w+)\=(\w+\,)/)	{
						$key = $1;
						$hash{$key} = $2;
				} elsif ($line =~ /(\w+)\=(.?\w.+)/)	{
						#print"$1 => $2\n";
						$hash{$1} = $2;
				} else {
						$hash{$key} .= $line;
				}
		}
		return \%hash;
}


## function call  
my $hash_ref =Build_Hash($fh); ## pass to the file handler referance to the function call and returns hash referance 


use Data::Dumper;
print Dumper($hash_ref);

## close file handler 
close($fh);
