#!/usr/bin/perl
use strict;
use warnings;

my $a = 0;

while ($a < 10)	{
		if ($a == 5) {
				$a+=1;
				next;
		}
#		print"$a\n";
		$a+=1;
}


my $b = 0;
while ($b < 10)	{
		unless ($b != 5)	{
				$b+=1;
				next;
		}
#		print"$b\n";
		$b+=1;
}



my $c = 0;

while ($c < 10)	{
			if ($c !=5 )	{
					$c+=1;
					next;
			}
#			print"$c\n";
			$c+=1;
}




my $d = 0;

while ($d < 10)	{
			unless ($d == 6)	{
					$d+=1;
					next;
			}
#			print"$d\n";
			$d+=1;
}



my $e = 0;

while ($e < 5)	{
		unless ($e != 3)	{
					last;
		}
#		print"$e\n";
		$e+=1;
}




my $f = 0;

until ($f > 10)	{
#		print"$f\n";
		$f+=1;
}
		


my $g = 0;

until ($g > 10)	{
		if ($g == 5)	{
				$g+=1;
				next;
		}
#		print"$g\n";
		$g+=1;
}



my $h = 0;

until ($h > 10)	{
		if ($h != 5)	{
				$h+=1;
				next;
		}
		print"$h\n";	
		$h+=1;
}



# 
my $j = 0;

until ( $j > 10)	{
			unless ($j != 5)	{
						last;
			}
			print"PRINT 0 TO 4 VALUES : $j\n";    
			$j+=1;
}


		
my $k = 0;

until ($k > 10)	{	
		unless ($k == 5)	{
					last;
		}
		print"NO OUTPUT : $k\n";
		$k+=1;
}



my $l = 0;
until ($l > 10)	{
		 unless ($l == 5)	{
				$l+=1;	
				next;
		 }
		 print"PRINT ONLY 5 : $l\n";
		 $l+=1;
}





my $m = 0;
until ($m > 10)	{
		last if ($m == 5);
		print"PRINT 0 TO 4 : $m\n";
		$m+=1;
}


		
foreach (1..9)	{
		next if ($_ == 5);
		print"PRINT 1 TO 4 AND 6 TO 9 : $_\n";
}





foreach (1..9) {
		last if ($_ !=5);
		print"NO OUT PUT : $_\n"; 
}




foreach (1..9) {
		last if ($_ == 4);
		print"PRINT 1 TO 3  : $_\n";
}



foreach (1..9) {
		next unless ($_ == 4);
		print"PRINT ONLY 4  : $_\n";
}



foreach (1..9) {
		last unless ($_ != 4);
		print"PRINT 1 TO 3 : $_\n";
}



foreach (1..9) {
		last unless ( $_ == 4);
		print"no output : $_\n";
}



print "$_\n" foreach (1..4);
		
my $aa = 2;

print "$aa\n" if ($aa == 2);

my %hash = ('a',1,'b',2);
my ($k1,$v1);
print "$k1 => $v1\n" while (($k1,$v1) = each (%hash));




my $ii;
print"$ii\n" for($ii= 0; $ii < 10; $ii+=1);











