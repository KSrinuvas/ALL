#!/usr/bin/perl -w
use strict;
#Listing 6.11. A program that prints the size of a file in bytes. 
 

print ("Enter the name of the file:\n");

my $filename = <STDIN>;

chop ($filename);

if (!(-e $filename)) {

        print ("File $filename does not exist.\n");
} elsif (-z $filename) {
				print ("File $filename is size zero.\n");
} else {

        my $size = -s $filename;

       print ("File $filename contains $size bytes.\n");

}
