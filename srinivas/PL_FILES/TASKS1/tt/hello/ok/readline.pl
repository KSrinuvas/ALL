#!/usr/bin/perl -w
use strict;
=c
my ($buffer) = "";
open(IN,'/home/srm/srinivas/PL_FILES/TASKS1/tt/hello/ok.txt') or die "Error reading file , stopped";

$buffer = <IN>;

my $line = readline( *$buffer))
/bin/bash: indent: command not found
print"$line\n";
close(IN);
=cut
my($buffer) = "";
open(FILE, "/home/srm/srinivas/PL_FILES/TASKS1/tt/hello/ok.pl") or
   die("Error reading file, stopped");

$buffer = <FILE>;
print("$buffer");

my @buff = readline( *FILE );
print("@buff");

my @aa = <FILE>;
for(@aa) { 
		chomp($_);
#		next if /^$/;
#		print"$_\n";
}

close(FILE);
