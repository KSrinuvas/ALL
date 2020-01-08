#!/usr/bin/perl -w
use strict;

##---------------------------------------------------------------
## read home dir and get .pl extention file in recursive function
##---------------------------------------------------------------

## read the below dir


my $dir = '/home/srm';

sub main {
		my $dir = shift;
		opendir(my $dh, "$dir") || die "Not able to open directory '$dir' $!";

		while (my $file = readdir $dh)	{
				#print"$file\n";
				crr($file);
		}
		closedir $dh;
}

main($dir);


#

sub crr {
		my $data = shift;
	#	print"$data\n";
		if (-f $data and $data =~ /\.pl$/)	{
				print"$data\n";
		} elsif (-f $data and $data =~ /\.py$/) {
				print"$data\n";
		}	elsif (-f $data and $data =~ /\.tcl$/) {
				print"$data\n";
		} else {
						
		}
		
}




