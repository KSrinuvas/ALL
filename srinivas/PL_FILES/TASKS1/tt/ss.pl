#!/usr/bin/perl
use strict;
use warnings;

my $dir = '/home/srm/srinivas/PL_FILES/TASKS1/*.txt';

foreach (glob($dir)) {
		if (-M $_ < 2) {
#				print"$_\n";
		}
}


opendir(DIR,'.') || die "NOt able to open a dir $!";
while (my $file = readdir DIR)	{
		if ($file =~ /^.*\.txt/)	{
	#	if ($file =~ /^.*\.pl/)		{
				print"$file\n";
		}	
}
close(DIR);


## creat a directory

my $d = './hello';

#mkdir($d) || die "Not able to create a directory $!";

## delate a diractory 

my $r = './ok';

