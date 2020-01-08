#!/usr/bin/perl
use strict;
use warnings;
use List::MoreUtils qw(uniq);

foreach (1..9) {
		if ($_%2==0)	{
#				print"$_\n";
				next;
		} 
}



my @aa = ();
foreach my $p (1..20)	{
		foreach my $q (2..$p)	{
				unless($p%$q!=0)	{
				#		print"$p\n";
						last;
				} else	{
					 push(@aa,$p);	
		    }				
		}
}

my @aaa = uniq (@aa);
#print"@aaa\n";



$a = 10;

while ($a > 2) {
		if ($a == 5)	{
				$a--;
				next;
		}
		#print"$a\n";
		$a--;
}

#print"\n\n\n";
#print"$a\n";





for (my $i = 20; $i > 1; $i--) {
			unless ($i != 15)	{
					last;
			}	
			print"$i\n";
}




