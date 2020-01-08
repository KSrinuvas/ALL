#!/usr/bin/perl -w
use strict;

use Config;


my $archname         = $Config{archname};
my $version          = $Config{version};


print "$archname\n";
print "$version\n";

foreach my $dd (values  (%Config) ) {
		print"$dd\n";
}

