#!/usr/bin/perl
use strict;
use warnings;
use IO::File; 
my $FH = IO::File->new('l2.txt','r') || die "Not able to open l2.txt file $!";
while (my $line = <$FH>) {
			next if ($line =~ /^\#/);
		#	next if ($line =~ /^$/);
	  # next unless ($line =~ /\S/);
		  unless ($line =~ /a/) {
				next;
			}


=c
		if ($line =~ /^\#/)	{
				next;
		} elsif ($line =~ /^$/) {
				next;
		}
		if ($line =~ m/rabbit/i) {
		   	#	print"$line\n";
		 } elsif ($line =~ m/boy/i) {
		   	#	print"$line\n";
		 }
=cut
				chomp($line);
				print"$line\n";
}

