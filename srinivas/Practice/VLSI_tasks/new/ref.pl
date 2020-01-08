#!/usr/bin/perl
use warnings;
my $out = "/home/srm";
my $newdir = $newdirectory;
open(TABLEA, "dirlist");
my @tablea = <TABLEA>;
foreach my $dir (readdir @tablea) {
		if (glob("*.pl")) {
				print"$dir\n";
		}
}






=c
    chdir $dir;
    if (glob("*.txt")) {
        system("mv $out $newdir");
    }
}
=cut
