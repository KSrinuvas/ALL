#!/usr/bin/perl
use strict;
use warnings;
open(IN,'file1.txt') || die "Not able to open file1.txt file";
## to count the warnings and errors
my $no_line = 0; 
my $error = 0;
my $warning = 0;
while (my $line = <IN>)	{
		next if($line =~ /^$/);
		chomp($line);
		err($line);
		war($line);
		$no_line++;
	#	print"$line\n";
}

##
print"NUMBER OF LINES IN A FILE : $no_line\n";
sub err {
		my $e = shift;
		if ($e =~ /error\:/i)	{
				$error++;
		}
}

print"NUMBER OF ERRORS IN A FILE :$error\n";

sub war {
		my $w = shift;
		if ($w =~ /warning\:/i)	{
				$warning++;
		}
}
print"NUMBER OF WARNINGS IN A FILE :$warning\n";

close(IN);
