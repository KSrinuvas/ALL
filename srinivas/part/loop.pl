#!/usr/bin/perl
use strict;
use warnings;

my @arr = (1..10);

foreach my $b (@arr)	{
		#print"$b\n";
}


foreach (1..5)	{
		#print"$_\n";
}

my @ab = qw/a b c d e f g h/;
#print"$_\n" foreach (10,20,(30,40),@ab);


foreach (1..9)	{
			next unless ($_ != 5);
	#		print"$_\n";
}





foreach (1..9)	{
		if ($_ == 5)	{
				next;
		}
	#		print"$_\n";
}




foreach (1..9)	{
		last if ($_ == 6);
	#	print"$_\n";
}	
			

foreach (1..9)	{
		if ($_ == 6)	{
				last;
		}
	#	print"$_\n";
}




foreach (1..9)	{
		unless ($_ != 6)	{
				next;	
		}
	#	print"$_\n";
}


my $p = 0;
while ($p < 10)	{
		if ($p == 5) {
				$p+=1;
				next;
		}
	#	print"$p\n";
		$p+=1;
}



foreach (1..9)	{
		next;
		print"$_\n";   # there no o/p
}




foreach (1..9)	{
		last;
		print"$_\n";  # there is no o/p
}




foreach (1..9)	{
		last if ($_ == 5);
	#	print"print 1..4  : $_\n";
}



foreach (1..9)	{
		next unless ($_ == 5);
	#	print"only 5 : $_\n";  # o/p is 5 
}



foreach (1..9)	{
		last unless ($_ == 5);
		print"there is no o/p\n";
}




foreach (1..9)	{
		next unless ($_ == 6);
	#	print"$_\n";
}



foreach (1..9) {
	  next unless ($_ != 10);
		print"$_\n";
}
				













