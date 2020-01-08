#!/usr/bin/perl
use strict;
use warnings;

my $file = '/home/srm/srinivas/PL_FILES/TASKS/TASK/mail.txt';
open(IN,$file) || die "Not able to open $!";
open(OUT,'>updatedmail.txt') || die "Not able to writea a file $!";
open(OUT1,'>updatedmail1.txt') || die "Not able to open a file $!";
open(OUT2,'>updatedmail2.txt') || die "Not able to open a file $!";
while (my $line = <IN>)	{
		chomp($line);
		$line =~ s/(\w+)(\@\w+\.\w+)/$ARGV[0]V$2/;
		print OUT "$line\n";
		$line =~ s/(\w+\@)(\w+\.\w+)/$1$ARGV[1]/;
		print OUT1 "$line\n";
		$line =~ s/srinu/$ARGV[2]/;
		print OUT2 "$line\n"; 
}
close(IN);
close(OUT);
close(OUT1);
close(OUT2);

		
