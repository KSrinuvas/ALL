#!/usr/bin/perl
use strict;
use warnings;


# Open file to read
open(DATA1, "<file1.txt");

# Open new file to write
open(DATA2, ">file2.txt");


my $line = <DATA1>;
chomp($line);







# Copy data from one file to another.
while(<DATA1>) {
   print DATA2 $_;
}



## rename ( " old file ", "new _file ")

## unlink ("delete the file in directory ")



#unlink "file2.txt"; to remove the file in file handling 


close( DATA1 );
close( DATA2 );
