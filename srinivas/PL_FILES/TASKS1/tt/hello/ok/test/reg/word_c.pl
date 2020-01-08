#!/usr/bin/perl -w
use strict;

print "Enter the string and empty line it will exit : ";

my $aa = <STDIN>;
chomp($aa);
my $no =0;
while ($aa ne "")	{
			my @words = split(/ +/,$aa);
			$no += @words;
			$aa = <STDIN>;
			chomp($aa);
}
print"Total no of words : $no\n";

