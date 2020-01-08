#!/usr/bin/perl -w
use strict;

## import module 
use Getopt::Long;

##--------------------------------------------------------------------------------
## write a parser and collect the multiple values at once using array referance 
## and dereferance array and to store the array data into a new file 
## write a new file 
##--------------------------------------------------------------------------------

my $arr_ref;
my $help;
## write a getoptions 

GetOptions ('add=s@' => \$arr_ref,   ## array referance in string
						'help|h' => \$help) or die ("Error in command line arguments\n");

## write a help function

sub help {
		print"$0 is the script name\n";
		print"add <Enter the multiple values at once min 5 and max 10><mandatatory>\n";
}

if (defined ($help))	{
		&help();
}

### write a file handler 
open(OUT,">exp1.txt") || die "Not able to open 'exp1.txt' file $!\n";

## dereferance of array referance 
my @array = @{$arr_ref};


## to itterating the array data by using foreach loop
foreach my $data (@array)	{
		print OUT "$data\n";
		print "add $data\n";
}


## close file handler 
close(OUT);



#--------------------------------------------------------
### result 
#--------------------------------------------------------
## perl example7.pl -add hello -add ok -add fine
#--------------------------------------------------------
dd hello
add ok
add fine
#--------------------------------------------------------
