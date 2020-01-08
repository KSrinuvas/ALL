#!/usr/bin/perl -w
use strict;
#Listing 6.14. A word-search and counting program that uses <>. 
my $searchword = $ARGV[0];
print ("Word to search for: $searchword\n");
shift (@ARGV);
my $totalwordcount =my $wordcount = 0;
my $filename = $ARGV[0];
while (my $line = <>) {
         chop ($line);
         my @words = split(/ /, $line);
         my $w = 0;
         while ($w < @words) {
                 if ($words[$w] eq $searchword) {
                        $wordcount += 1;
                 }
                 $w++;
         }
         if (eof) {
                 print ("occurrences in file $filename: ");
                 print ("$wordcount\n");
                 $totalwordcount += $wordcount;
                 $wordcount = 0;
                 $filename = $ARGV[0];
        }
}
print ("total number of occurrences: $totalwordcount\n");

