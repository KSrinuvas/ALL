#!/usr/bin/perl
use warnings;
use strict;
 
my $filenam = '/home/srm/srinivas/PL_FILES/TASKS1/tt/hello/ok.txt';
my $filename = 't';
if(-e $filenam && -f _ && -r _ ){
   print("File $filenam exists and readable\n");
}

open(FILE,$filenam);

my @lines = readline( *FILE);
#chomp(@lines);
print"@lines\n";
close(FILE);

open(IN,$filenam);
my @aa = <IN>;
chomp(@aa);
print"@aa\n";



my $bin = '/home/srm/Downloads/image1.jpeg';
if (-e $bin && -B _)	{
		print("File $bin exists and binary data\n");
}

