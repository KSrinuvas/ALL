#!/usr/bin/perl -w
use strict;

#Write a program that takes a list of files from the command line and examines their size. If a file is bigger than 10,000 bytes, print
#1 File name is a big file!
#2 where name is a placeholder for the name of the big file.

## 

foreach my $file (@ARGV)	{
		if (!(-e $file))	{
				print"file is not exists $file\n";
		} else {
				my $file_size = -s $file;
				if ($file_size == 10000)	{
						print"$file file size is $file_size this is big file\n";
				} else {
						print"$file file size bytes is $file_size less then 10000 byts this is not a big file\n";
				}
		}	
}



