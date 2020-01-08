#!/usr/bin/perl
use strict;
use warnings;
use IO::File;
my $FH = IO::File->new('l2.txt','r') || die "Not able to open l2.txt";
while (my $line = <$FH>)	{
			if ($line =~ /^\#/)	{
					next;
			} elsif ($line =~ /^$/)	{
					next;
			}
			chomp($line);
#			print"$line\n";
}
seek($FH,0,0);
while (my $line1 = <$FH>)	{
			next if ($line1 =~ /^\#/);
			next unless ($line1 =~ /\S/);
			chomp($line1);
			print"$line1\n";
}
