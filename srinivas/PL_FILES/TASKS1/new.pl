#!/usr/bin/perl
use strict;
use warnings;
use IO::File;
my $FH = IO::File->new('l2.txt','r') || die "Not able to open file l2.txt $!";
my ($boy,$rabbit) = (0,0);
while (my $line = <$FH>)	{
		next if($line =~ /^\#/); #to skip the starting hash line
		next unless ($line =~ /s/); ## to remove the emety lines  
		chomp($line);
		my $ret = count($line);
	
		if ($ret == 1)	{
				 $boy++; 
		} 
		my $ret1 = count1($line);   
		if ($ret1 == 5) {
				$rabbit++;
		}
}

## i want to count the no of boy words in a file l2.txt 
sub count {
		my ($c,@aa) = @_;
		if ($c =~ /boy/i)	{
				return 1;
		}
		return 0;
}
print "No of boy words in a file is : $boy\n";
## i want to count the no of rabbit words in a file l2.txt
sub count1 {
		my ($d,@ab) = @_;
		if ($d =~ /rabbit/i)	{
				return 5;
		}
		return 10;
}
print "No of rabbits on a file is : $rabbit\n";


my $WF = open(IN,'l5.txt') || die "Not able write l5.txt file $!";

## i want to replace boy in son 

seek($FH,0,0);

foreach (<$FH>)		{
		next if /^\#/;
		next unless /s/;
		chomp($_);
		my $av = change($_);
		
		
}


sub change { 
		my ($r,@rr) = @_;
		if ($r =~ s/boy/\uson/i)	{
				return 3;
		} 
		return 6;
}


	




close($FH);


