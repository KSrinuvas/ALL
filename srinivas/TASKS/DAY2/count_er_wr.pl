#!/usr/bin/perl -w
use strict;

my $file = $ARGV[0];
open(IN,"$file") || die "not able to open file $!";

my ($count_err,$count_war)  = (0,0);
while (my $line = <IN>)	{	
		chomp($line);
#		print"$line\n";
		$count_err++ if ($line =~ /error\:/i);
		$count_war++ if ($line =~ /war.*\:/i);
}

print"count the no of errors in a file : $count_err\n";
print"count the no of warnings in a file : $count_war\n";


