#!/usr/bin/perl -w
use strict;
## import the module 
use Getopt::Long;


##--------------------------------------------------------------------
## Description: read a text file and build the hash
##--------------------------------------------------------------------

my $data   = "jira.txt";
my $help;

GetOptions  ("file=s"   => \$data,      # string
              "help"  => \$help)   # flag
  or die("Error in command line arguments\n");

if (defined $help)	{
		&help();
}

## write a help function for use understanding
sub help {
		print" $0 is the script name\n";
		print"
		file <Enter the file name><optional>
		Ex: perl -$0 -file file.txt
					(or)
				perl -$0 \n";
}


open(IN,"$data") || die "Not able to open '$data' $!";
my %hash;
my $key = '';
while (my $line = <IN>)	{
		chomp($line);
		#print"$line\n";
		 if ($line =~ /(\w+)\=(\w+\,.*)/)	{
				#print"$1 => $2\n";
				$key = $1;
				$hash{$key} = $2;
		} elsif ($line =~ /\=/)	{
			#	print"$line\n";
				$hash{$`} = $';
		} else {
				$hash{$key} .=$line;
				#print"$line\n";
		}
}

use Data::Dumper;
print Dumper(\%hash);


## close filehandelar
close(IN);



		

