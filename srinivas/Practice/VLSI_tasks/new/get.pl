#!/usr/bin/perl -w
use strict;

##--------------------------------------------------------------------------
## to find the all .pl extention file in a home directory recursive function
##--------------------------------------------------------------------------


my $dir = '/home/srm/';

if (-d $dir)	{
	print"yes this is directory\n";
} else { 
	print"no a directory\n";
}


#my $ff = "/home/srm/srinivas/Practice/aa.txt";
my $ff = "/home/srm/srinivas/Practice/Emp_23.pl";

if (-B $ff)	{
		print"file is binary\n";
} else {
		print"file is not binary\n";
}


my $aa = 'data.pl';

if (-T $aa)	{
		print"this is a text file\n";
} else {
		print"this is not a text file\n";
}


if (-z 'data.pl')	{
		print"file exists and has a zero size\n";
} else {
		print"file exits not has a zero size\n";
}


if (-s 'data.pl')	{
		print"file or dir exists nonzero size\n";
} else {
		print"zero size\n";
}

 

if (-f 'data.pl')	{
		print"entry is a plain file\n";
} else {
		print"entry is not a plan file\n";
}





