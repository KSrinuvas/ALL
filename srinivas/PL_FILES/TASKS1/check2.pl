#!/usr/bin/perl
use strict;
use warnings;

open(IN,'l2.txt') || die "Not able to open l2.txt file $!";
my $rabbit = 0;
my $rr = 0;
my @ww;
while (my $line = <IN>)	{
		next if ($line =~ /^\#/);
		next unless($line =~ /\S/);
		chomp($line);
		my @words = split(" ",$line);
		aa(@words);
		push(@ww,@words);
		foreach (@words) {
				if ($_ eq 'Rabbit')	{
		#				print"$_\n";
						$rabbit++;
						bb($_);
				}
		}
}
print "count rabbit in a file : $rabbit\n";
sub aa {
		foreach (@_)	{
			 if ($_ eq 'Rabbit')	{
		#			print"$_\n";
					$rr++;
		   }	
		}
}

print "in function count rabbit in a file : $rr\n";


sub bb {
		my $abc = shift;
		if ($abc eq "\urabbit") {
				print"$abc\n";
		}
}


close(IN);
