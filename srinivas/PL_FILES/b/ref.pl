#!/usr/bin/perl -w
use strict;

my $dir = $ARGV[0];
#mm($dir);


my @files = glob($dir);

foreach (@files)	{
		print"$_\n";
}











=c
sub mm {
		my $dd = shift;
		opendir(DIR, $dd) || die "Not able to open dir '$dd' $!";
		while (my $ff = readdir DIR)	{
			#	print"$ff\n";
			#	bb($ff);
		}
		closedir DIR;
}


sub bb {
		my $tt = shift;
		print"$tt\n";
}

=cut


