#!/usr/bin/perl -w
use strict;

##--------------------------------------------------------------------------
## Opting In
## collect the data form Getoptions and store the data from some text file 
##--------------------------------------------------------------------------
=c
# import module
use Getopt::Long;

# read options
$result = GetOptions ("add=s" => \@list);

# once all the values are in the array
# do something with them

# open file for writing
open(FILE, ">>subscribers.dat");

# iterate over array
foreach $l (@list)
{
    # write array elements to file
    print FILE "$l\n";
    print "Added $l\n";
}

# close file when done
close (FILE);
=c
Here's what the output might look like:

$ ./editlist.pl --add=me@me.com --add=you@you.com --add=them@them.com
Added me@me.com
Added you@you.com
Added them@them.com
=cut



## import module 
use Getopt::Long;

## varibels 
my $help;
my @array;

GetOptions ('add=s' => \@array,
						'help|h' => \$help)
						or die ("Error in command line argument");

## to write a help function

sub help {
		print"$0 is the script name\n";
		print"add <Enter the values><mandatory>
		EX :$0 -add 12 -add 55 -add ....\n";
}

if (defined $help)	{
		&help();
}


## write a file handler 

open(OUT,">exp.txt") || die "Not able to write 'exp.txt' file $!"; 


## collect the array data and write a file 

foreach my $data (@array)	{
		print OUT "$data\n";
		print "add $data\n";
}


## close the file handler

close(OUT);





























