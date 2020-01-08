#!/usr/bin/perl -w
use strict;

## read file handler
my $file = $ARGV[0];
open(my $file,"$file") || die "Not able to open $!";

sub Hello {
		my $fh = shift;
		while (my $line = <$fh>)	{
				chomp($line);
				print"$line\n";
		}
}


Hello($file);
