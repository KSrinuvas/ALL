#!/usr/bin/perl -w
use strict;

#Listing 6.5. A program that merges two files.
 



open (INFILE1, "a.txt") ||

        die ("Cannot open input file merge1\n");

open (INFILE2, "b.txt") ||

        die ("Cannot open input file merge2\n");

my $line1 = <INFILE1>;

my $line2 = <INFILE2>;

while ($line1 ne "" || $line2 ne "") {

       if ($line1 ne "") {

               print ($line1);

               $line1 = <INFILE1>;

       }

       if ($line2 ne "") {

               print ($line2);

               $line2 = <INFILE2>;

       }

}

