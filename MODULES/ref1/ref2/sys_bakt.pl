#!/usr/bin/perl -w
use strict;

system("csh /home/srm/bb.csh");



my $aa = system("python3 /home/srm/srinivas/PY_FILES/TASKS/DAY1/l2.py");


my $res = ($aa == 0) ? "system status return 0 succeds" : "system status returns 1 fails";

print "$res\n";





my @data = qx{ls -l};

foreach (@data) {
	#	print"$_";
}



my $str = qx{ls -l};

chomp($str);
print"$str\n";




