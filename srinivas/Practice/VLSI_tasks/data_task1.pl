#!/usr/bin/perl -w
use strict;
# import module 
use Getopt::Long;
use Data::Dumper;
##---------------------------------------------------------
## Read a file and build the hash in dynamic way
##---------------------------------------------------------

my $file = '';
my $help;
GetOptions ('file=s' => \$file,
						'help|h' => \$help) or die ("Error in command line argument\n");

if (defined $help)	{
		&help();
}

## to write a help function for uses understanding 

sub help {
		print"$0 is the file name\n";
		print"
		file <Enter the file><Mandatary>
		Ex :perl $0 -file filename\n";
}

## read file 
open(my $fh,"$file") || die "Not able to open '$file' $!";

sub Read_Data {
		my $fh = shift;
		my %hash;
		my $pri = '';
		while (my $line = <$fh>)	{
				chomp($line);
				if ($line =~ /^\#+(\w+)/)	{
						$pri = $1;
				} elsif ($line =~ /(\w.+)\=(\d+)/)	{
						$hash{$pri}{$1} = $2;
				}
		}
		return \%hash;
}

## call function
my $hash_ref = Read_Data($fh); ## pass the filehandle referance and returns to the hash referance 

print Dumper($hash_ref);

## close file handler 
close($fh);
