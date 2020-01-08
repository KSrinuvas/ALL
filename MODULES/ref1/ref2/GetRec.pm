#!/usr/bin/perl -w
use strict;

package Test12;

sub dir {
		my $dir = shift;
		opendir (DIR, $dir) || die "Not able to open dir $dir $!\n";
		foreach (readdir $dir)	{
				print"$_\n";
		}
}

1;

