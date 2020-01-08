#!/usr/bin/perl -w
use strict; 

unless ($#ARGV == 2) {  ## or if ($#ARGV != 2) {  
		print"usage : mycal no1 op no2\neg : mycal 5 + 2 or 5 - 3\n";
		exit;
}

my $n1 = $ARGV[0];
my $op = $ARGV[1];
my $n2 = $ARGV[2];

my $ans = 0;
sub cal {
		## addtion +
		if ($op eq '+')	{
				$ans = $n1+$n2;
		}	elsif ($op eq '-')	{
				$ans = $n1-$n2;
		} elsif ($op eq "*")	{
				$ans = $n1*$n2;
		} elsif ($op eq '/')	{
				$ans = $n1/$n2;
		} elsif ($op eq "**")	{
				$ans = $n1**$n2; 
		}	else {
				print "Error : operand must be +,-,*,/,** only\n";
				exit;
		}	
		return $ans;
}
## return the ans call func 
my $aa = cal($n1,$n2);
print"$aa\n";


