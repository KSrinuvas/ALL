#!/usr/bin/perl
use strict;
use warnings;
use IO::File;
my $FH = IO::File->new('l2.txt','r') || die "Not able to read a l2.txt file $!";
my $rb = 0;
foreach (<$FH>)	{
		next if /^#/;
		next unless /\S/;
		chomp($_);
		ok($_);
		my $bb = data($_);
		$rb += count($_); 
		if ($bb == 0)	{
#				print"$bb\n";
		}
}
sub data {
		my $h = shift;
		return 1 if ($h =~ /b/i);
		return 0;
}
		
		 
## count the rabbit word in a file 		
sub count {
		my $g = shift;
		if ($g =~ /rabbit/i) {
				return 1
		}
}
print"No of rabbit words in a file : $rb\n";	
## i want to replace the rabbit to the cat and save the data into new file
## write
sub ok {
		my $wr = shift;
		if ($wr =~ s/rabbit/\ucat/i)	{
				print "$wr\n";
		} else { 
				print "$wr\n";
		}
}





###
seek(IN,0,0);

while (my $l1 = <IN>)	{
		chomp($l1);
		print"$l1\n";
}
















