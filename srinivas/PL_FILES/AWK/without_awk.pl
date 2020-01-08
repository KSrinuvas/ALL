#!/usr/bin/perl -w
use strict;
use Getopt::Long;


##--------------------------------------------------------
## Write a program print particular coloman in a file 
## you can chose the colomn to the command line argument 
##--------------------------------------------------------


## write a parser
my $colomn;
my $verbose;
my $help; 

GetOptions ( "colomn|c =i" => \$colomn, ## string
						 "help|h" => \$help, #flag
						 "verbose" => \$verbose) # flag
					or die ("Error in command line argument\n");

if (defined ($help))	{
		&help();
}


if (defined ($colomn))	{
		print "The colomn no is : $colomn\n";
}

sub help {
		print "$0 this is script name\n";
		print "
					colomn|c <Enter the colomn no> <madatory>
					help|h<print script usage options>
					ex: $0 -colomn 2\n";
} ## end function

		


my $file = 'num.txt';

## read the file 'num.txt'

open(my $fh,"$file") || die "Not able to read a '$file' $!";

while (my $line = <$fh>)	{
		chomp($line);
		next if ($line =~ /^$/); ## skip the empty lines in a file 
		next if ($line =~ /^\#/); ## skip the commenting lines in a file 
		#print"$line\n";
		## call function 
		Get_Col($line);
}

		
sub Get_Col {
		my $line = shift;
		my @array = ();
		push(@array,split(/ /,$line));
	#	print"@array\n";
		if (defined $line)	{
				print"$array[$colomn-1]\n";
		}
		@array = ();
}












close($fh);






