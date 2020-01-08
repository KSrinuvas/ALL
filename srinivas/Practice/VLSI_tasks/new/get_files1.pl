#!/usr/bin/perl -w
use strict;


my $DIR = "/home/srm/";


opendir(my $DH, $DIR) or die "Error opening $DIR: $!";
my %files = map { $_ => (stat("$DIR/$_"))[9] } grep(! /^\.\.?$/, readdir($DH));
closedir($DH);
my @sorted_files = sort { $files{$b} <=> $files{$a} } (keys %files);
#print $sorted_files[0]."\n";

#print @sorted_files."\n";

my $size = @sorted_files;

for (my $i = 0;$i < $size; $i++)	{
		#print"$sorted_files[$i]\n";
		if (-d $sorted_files[$i])	{
				print"$sorted_files[$i]\n";
		} else {
		    print"$sorted_files[$i]\n";
		}
}

