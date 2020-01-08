#!/usr/bin/perl -w
use strict;

#Listing 6.6. A program that writes to the standard error file. 
 

open(MYFILE, "a.txt") ||

        die ("Unable to open input file file1\n");

print STDERR ("File file1 opened successfully.\n");

my $line = <MYFILE>;

while ($line ne "") {

        chop ($line);

        print ("\U$line\E\n");

        $line = <MYFILE>;
}


