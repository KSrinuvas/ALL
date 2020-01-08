#!/usr/bin/perl -w
use strict;

use Env;

#print "$PATH\n";



my @list_paths = split(/\:/,$PATH);


print "$_\n" foreach (@list_paths);



foreach (keys (%INC) ) {
		print"$_\n";
		if (/env/i)	{
				print"$_\n";
				print"$INC{$_}\n";
		}
}








