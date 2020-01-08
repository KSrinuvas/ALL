#!/usr/bin/perl -w
use strict;

my $dir = '/home/srm/srinivas/Practice/VLSI_tasks/new/aa';

if (-d $dir)	{
		opendir(DIR,$dir) || die "Nt able to open '$dir'$!";
		while (my $line = readdir DIR)	{
				if (-f $line) {
						print"$line\n";
				}
		}
		closedir(DIR);
}

