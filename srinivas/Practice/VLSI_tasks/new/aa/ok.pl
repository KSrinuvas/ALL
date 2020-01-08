#!/usr/bin/perl -w
use strict;

my $dir = $ARGV[0];

gg($dir);
sub gg {
		my $dd = shift;
		opendir(my $dh,$dd) || die "Not able to open dir '$dd' $!";
		while (my $ff = readdir $dh)	{
					fun($ff,$dd);
		}
}

sub fun {
		my $drf = shift;
		my $path = shift;
		my $p;
		if ($path =~ /\/$/)	{
				$p = "$path$drf";
		} else {
				$p = "$path/$drf";
		}
		if ($p =~ /\.\.?$/)	{
			#	print"$p\n";
		} else { 
				if (-d $p)	{
						unless ($p =~ /\.\w+$/)	{
								gg($p);
						}
				} else {
						print"$p\n";
				}
		}
}

