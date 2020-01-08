#!/usr/bin/perl -w
use strict;
my $filename = "ok.txt";
if (-e $filename) {
    print "The file '$filename' exists\n";
} else {
    print "The file '$filename' not exists\n";
}


##  -s returns to the size of the file 

my $size = -s $filename;

print"size of the file : $size\n"; 


my $dir = "ok.txt";

if (-d $dir)	{
		print "The file is a dir\n";
} else {
		print "the file is not a dir\n";
}



my $ss = "ok.pl";
## -f file is a plain file
## -z zero or empty file
if (-z $ss)	{
		print "The file is a zero file $ss\n";
} else {
		print "the file is not zero file $ss\n";
}
